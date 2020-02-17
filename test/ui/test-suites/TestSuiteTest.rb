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
      .add_test_case(testCase)
      .add_test_case(testCase)
      .add_test_case(testCase)
      .build

    assert_equal "My Test Suite", testSuites.get_name, "TestSuites name should be correctly set"
    assert_equal 3, testSuites.get_number_of_test_cases, "TestSuites should have 3 entries"
  end

  def run_all()
    test_suites_basic
  end
end
