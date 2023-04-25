require "json"
require "erb"

module Bskyrb
  module LexiconParser
    @@active_namespace = ""

    def self.build_classes_hash_from_lexicon(lexicon_file)
      parsed = File.open(lexicon_file) { |f| JSON.parse(f.read) }
      output = {}
      parsed["defs"].each do |k, v| # map {|v| build_class_hash_from_schema(v)}
        @@active_namespace = parsed["id"].split(".").map(&:capitalize).join("")
        next if k == "main" # skip procedures for now
        output[ref_to_class_str(k)] = build_class_hash_from_schema(v)
      end
      output
    end

    def self.build_class_hash_from_schema(json_schema, output = {})
      return if json_schema.has_key? "main"
      to_process = json_schema["properties"] || json_schema # ["items"]
      to_process.each_pair do |key, value|
        if key == "type" || !value.is_a?(Hash) || value["type"] == "query" || key == "main"
          next
        end

        output[key] = if value["type"] == "object"
          build_class_hash_from_schema(value, {})
        elsif value["type"] == "array"
          [build_class_hash_from_schema(value, {}).values.first]
        elsif value["type"] == "ref"
          ref_to_class_str(value["ref"])
        else
          -1
        end
      end
      output
    end

    def self.ref_to_class_str(ref, ns = @@active_namespace)
      klass_str_lower = ref.split("#")[-1]
      klass_str = klass_str_lower[0].capitalize + klass_str_lower.slice(1..)
      ns += "::" if ns
      "#{ns}#{klass_str}"
    end

    def self.template
      %(
module <%= klass_str.split("::").first %>
class <%= klass_str.split("::").last %>
  <% properties.each do |key, value| %>
  attr_accessor :<%= key %>
  <% end %>

  def self.from_hash(hash)
    # httparty-returned string-keyed hash
    instance = new
    <% properties.each do |key, value| %>
    instance.send("<%= key %>=", hash["<%= key %>"])
    <% end %>
    instance
  end
end
end
)
    end

    def self.class_definitions(classes_hash)
      classes_hash.map do |klass_str, properties|
        ERB.new(template).result_with_hash({klass_str: klass_str, properties: properties})
      end
    end
  end

  class DynamicClassFromHash
    def self.from_hash(hash)
      hash.each do |klass_sym, properties|
        Object.const_set(klass_sym, Class.new do
          attr_accessor(*properties.keys.map(&:to_sym))

          def self.from_hash(properties)
            # httparty-returned string-keyed hash body
            instance = new
            properties.each do |key, value|
              instance.send("#{key}=", value)
            end
            instance
          end
        end)
      end
    end
  end
end

if __FILE__ == $0
  defs = {}
  Dir["atproto/lexicons/**/*.json"].each do |file|
    hashes = Bskyrb::LexiconParser.build_classes_hash_from_lexicon(file)
    defs = defs.merge(hashes) # Bskyrb::LexiconParser.class_definitions(hashes)
  end
  File.open("lib/bskyrb/generated_classes.rb", "w") do |f|
    f.puts "module Bskyrb"
    f.puts Bskyrb::LexiconParser.class_definitions(defs)
    f.puts "end"
  end
  `bin/format`
  `bundle exec rbs prototype rb lib/bskyrb/generated_classes.rb > sig/generated_classes.rbs`
end
