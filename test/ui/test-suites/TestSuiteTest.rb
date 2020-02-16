require "test/unit"
require_relative "../../../lib/ui/test-suites/TestSuite"
require_relative "../../../lib/ui/driver/Driver"

class TestSuiteTest < Test::Unit::TestCase
  def test_suites_basic
    testSuites = LegoTechSelenium::TestSuite::Builder.new("My Sweet", LegoTechSelenium::Driver.new(""))
      .addTestCase("Test Case 1")
      .addTestCase("Test Case 2")
      .addTestCase("Test Case 3")
      .build

    assert_equal "My Sweet", testSuites.getName, "TestSuites name should be correctly set"
    assert_equal 3, testSuites.getNumberOfTestCases, "TestSuites should have 3 entries"
  end
end
