require "selenium-webdriver"
require_relative "../../lib/ui/driver/Driver"
require_relative "../../lib/ui/test-cases/TestCase"
require_relative "../../lib/ui/test-suites/TestSuite"
require_relative "actions/InputAction"
require_relative "actions/SelectAction"
require_relative "actions/ButtonAction"
require_relative "actions/CheckBoxAction"
require_relative "actions/RadioButtonAction"

# Function used to create the Selenium Driver
# @returns [WebDriver] A selenium webdriver that can control Chrome v80
def createSeleniumDriver()
  @options = Selenium::WebDriver::Chrome::Options.new
  @options.add_argument("--ignore-certificate-errors")
  @options.add_argument("--disable-popup-blocking")
  @options.add_argument("--disable-translate")
  @options.add_argument("--window-size=1920,1080")
  @options.add_argument("--start-maximized")

  Selenium::WebDriver.for :chrome, options: @options
end

def get_check_box_action(driver)
  # Create your action
  RadioButtonAction.new(driver)
end

def get_radio_button_action(driver)
  # Create your action
  CheckBoxAction.new(driver)
end

def get_input_action(driver)
  # Create your action
  InputAction.new(driver)
end

def get_select_action(driver)
  # Create your action
  SelectAction.new(driver)
end

def get_button_action(driver)
  # Create your action
  ButtonAction.new(driver)
end

def get_test_case(driver)
  LegoTechSelenium::TestCase::Builder.new("My first test case", driver)
    .add_action(get_input_action(driver))
    .add_action(get_select_action(driver))
    .add_action(get_button_action(driver))
    .add_action(get_check_box_action(driver))
    .add_action(get_radio_button_action(driver))
    .build
end

def get_test_suite(driver)
  LegoTechSelenium::TestSuite::Builder.new("My first test suite", driver)
    .add_test_case(get_test_case(driver))
    .build
end

driver = LegoTechSelenium::Driver.new(createSeleniumDriver)
driver.set_implicit_wait(10)
driver.set_page_load(10)
driver.set_script_timeout(10)

testSuite = get_test_suite(driver)

# Navigate to your page
driver.set_navigate_to("file://#{Dir.pwd}/sample.html")
testSuite.run

# Allow user to see the end result
sleep(5)
