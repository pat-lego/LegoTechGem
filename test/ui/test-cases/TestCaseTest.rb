require "test/unit"
require_relative "../../../lib/ui/test-cases/TestCase"
require_relative "../../../lib/ui/driver/Driver"

class CustomAction < LegoTechSelenium::Action
  def initialize
    super({
      :value => "Test",
    }, LegoTechSelenium::Driver.new(""))
  end
end

class TestCaseTest < Test::Unit::TestCase
  def test_case_basic
    action = CustomAction.new
    testCase = LegoTechSelenium::TestCase::Builder.new("My Test Case", LegoTechSelenium::Driver.new(""))
      .add_action(action)
      .add_action(action)
      .add_action(action)
      .add_action(action)
      .build

    assert_equal "My Test Case", testCase.get_name, "Get the name of the Test Case"
    assert_equal 4, testCase.get_number_of_actions, "Get the number of actions within the Test Case"
  end
end
