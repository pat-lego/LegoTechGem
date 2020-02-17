require "selenium-webdriver"
require_relative "../../lib/ui/driver/Driver"
require_relative "../../lib/ui/test-cases/TestCase"
require_relative "../../lib/ui/test-suites/TestSuite"
require_relative "actions/SimpleAction"

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

def get_action(driver)
  # Create your action
  SimpleAction.new(driver)
end

def get_test_case(driver)
  LegoTechSelenium::TestCase::Builder.new("My first test case", driver)
    .add_action(get_action(driver))
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
