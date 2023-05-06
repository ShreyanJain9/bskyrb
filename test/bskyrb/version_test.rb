# frozen_string_literal: true

require "test_helper"

module Bskyrb
  class VersionTest < Minitest::Test
    # See https://github.com/semver/semver/pull/460 for more information on the SemVer regex.
    SEMVER_REGEX = /^(0|[1-9]\d*)\.(0|[1-9]\d*)\.(0|[1-9]\d*)(?:-((?:0|[1-9]\d*|\d*[a-zA-Z-][0-9a-zA-Z-]*)(?:\.(?:0|[1-9]\d*|\d*[a-zA-Z-][0-9a-zA-Z-]*))*))?(?:\+([0-9a-zA-Z-]+(?:\.[0-9a-zA-Z-]+)*))?$/

    def test_version_returns_a_semver_string
      assert_match SEMVER_REGEX, Bskyrb::VERSION
    end
  end
end
