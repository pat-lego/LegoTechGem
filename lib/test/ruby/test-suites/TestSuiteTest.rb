require "test/unit"
require_relative "../../../main/ruby/test-suites/TestSuite"
require_relative "../../../main/ruby/driver/Driver"

class TestSuiteTest < Test::Unit::TestCase
  def test_suites_basic
    testSuites = TestSuite::Builder.new("My Sweet", Driver.new)
      .addTestCase("Test Case 1")
      .addTestCase("Test Case 2")
      .addTestCase("Test Case 3")
      .build

    assert_equal "My Sweet", testSuites.getName, "TestSuites name should be correctly set"
    assert_equal 3, testSuites.getNumberOfTestCases, "TestSuites should have 3 entries"
  end

  def run_all
    test_suites_basic
  end
end
