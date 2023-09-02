# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/prettier_print/all/prettier_print.rbi
#
# prettier_print-1.2.1

class PrettierPrint
  def break_parent; end
  def breakable(separator = nil, width = nil, indent: nil, force: nil); end
  def breakable_empty; end
  def breakable_force; end
  def breakable_return; end
  def breakable_space; end
  def buffer; end
  def comma_breakable; end
  def current_group; end
  def fill_breakable(separator = nil, width = nil); end
  def fits?(next_commands, rest_commands, remaining); end
  def flush(base_indentation = nil); end
  def genspace; end
  def group(indent = nil, open_object = nil, close_object = nil, open_width = nil, close_width = nil); end
  def groups; end
  def if_break; end
  def if_flat; end
  def indent; end
  def initialize(output = nil, maxwidth = nil, newline = nil, &genspace); end
  def last_position(node); end
  def line_suffix(priority: nil); end
  def maxwidth; end
  def nest(indent); end
  def newline; end
  def output; end
  def remove_breaks(node, replace = nil); end
  def remove_breaks_with(doc, replace); end
  def reset; end
  def self.format(output = nil, maxwidth = nil, newline = nil, genspace = nil, indentation = nil); end
  def self.singleline_format(output = nil, _maxwidth = nil, _newline = nil, _genspace = nil); end
  def seplist(list, sep = nil, iter_method = nil); end
  def target; end
  def text(object = nil, width = nil); end
  def trim; end
  def with_target(target); end
end
class PrettierPrint::SingleLine
  def break_parent; end
  def breakable(separator = nil, _width = nil, indent: nil, force: nil); end
  def fill_breakable(separator = nil, _width = nil); end
  def flush; end
  def group(_indent = nil, open_object = nil, close_object = nil, _open_width = nil, _close_width = nil); end
  def if_break; end
  def if_flat; end
  def indent; end
  def initialize(output, _maxwidth = nil, _newline = nil); end
  def line_suffix; end
  def line_suffixes; end
  def nest(_indent); end
  def output; end
  def target; end
  def text(object = nil, _width = nil); end
  def trim; end
end
class PrettierPrint::SingleLine::IfBreakBuilder
  def if_flat; end
end
class PrettierPrint::Align
  def contents; end
  def indent; end
  def initialize(indent:, contents: nil); end
  def pretty_print(q); end
end
class PrettierPrint::Breakable
  def force?; end
  def indent?; end
  def initialize(separator = nil, width = nil, force: nil, indent: nil); end
  def pretty_print(q); end
  def separator; end
  def width; end
end
class PrettierPrint::BreakParent
  def pretty_print(q); end
end
class PrettierPrint::Group
  def break; end
  def break?; end
  def contents; end
  def depth; end
  def initialize(depth, contents: nil); end
  def pretty_print(q); end
end
class PrettierPrint::IfBreak
  def break_contents; end
  def flat_contents; end
  def initialize(break_contents: nil, flat_contents: nil); end
  def pretty_print(q); end
end
class PrettierPrint::Indent
  def contents; end
  def initialize(contents: nil); end
  def pretty_print(q); end
end
class PrettierPrint::LineSuffix
  def contents; end
  def initialize(priority: nil, contents: nil); end
  def pretty_print(q); end
  def priority; end
end
class PrettierPrint::Text
  def add(object: nil, width: nil); end
  def initialize; end
  def objects; end
  def pretty_print(q); end
  def width; end
end
class PrettierPrint::Trim
  def pretty_print(q); end
end
module PrettierPrint::Buffer
  def self.for(output); end
end
class PrettierPrint::Buffer::StringBuffer
  def <<(object); end
  def initialize(output = nil); end
  def output; end
  def trim!; end
end
class PrettierPrint::Buffer::ArrayBuffer
  def <<(object); end
  def initialize(output = nil); end
  def output; end
  def trim!; end
end
class PrettierPrint::IfBreakBuilder
  def flat_contents; end
  def if_flat; end
  def initialize(q, flat_contents); end
  def q; end
end
class PrettierPrint::IfFlatIgnore
  def if_flat; end
  def initialize(q); end
  def q; end
end