require "test/unit"
require_relative "../../../lib/ui/test-cases/TestCase"
require_relative "../../../lib/ui/driver/Driver"

class TestCaseTest < Test::Unit::TestCase
  def test_case_basic
    action = LegoTechSelenium::Action.new({}, LegoTechSelenium::Driver.new(""))
    testCase = LegoTechSelenium::TestCase::Builder.new("My Test Case", LegoTechSelenium::Driver.new(""))
      .addAction(action)
      .addAction(action)
      .addAction(action)
      .addAction(action)
      .build

    assert_equal "My Test Case", testCase.getName, "Get the name of the Test Case"
    assert_equal 4, testCase.getNumberOfActions, "Get the number of actions within the Test Case"
  end
end
