require "test/unit"
require_relative "../../../lib/ui/test-suites/TestSuite"
require_relative "../../../lib/ui/driver/Driver"

class TestSuiteTest < Test::Unit::TestCase
  def test_suites_basic
    testCase = LegoTechSelenium::TestCase.new("My Case", LegoTechSelenium::Driver.new(""))
    testSuites = LegoTechSelenium::TestSuite::Builder.new(
      "My Test Suite",
      LegoTechSelenium::Driver.new("")
    )
      .addTestCase(testCase)
      .addTestCase(testCase)
      .addTestCase(testCase)
      .build

    assert_equal "My Test Suite", testSuites.getName, "TestSuites name should be correctly set"
    assert_equal 3, testSuites.getNumberOfTestCases, "TestSuites should have 3 entries"
  end
end
