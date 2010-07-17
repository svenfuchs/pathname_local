require 'test/unit'
require File.expand_path('../../lib/pathname_local', __FILE__)

class PathnameLocalTest < Test::Unit::TestCase
  def test_pathname_local
    expected = Pathname.new(File.expand_path('../fixtures', __FILE__)).to_s
    result = Pathname.local('fixtures').to_s
    assert_equal expected, result
  end
end