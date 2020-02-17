require "selenium-webdriver"

# @author Patrique Legault
module LegoTechSelenium
  class Driver
    # Pass in an instance of the driver
    # @param The driver from Selenium Webdriver class
    def initialize(driver)
      @driver = driver
      @wait = Selenium::WebDriver::Wait.new(:timeout => 15)
    end

    # Set the amount of time the driver should wait when searching for elements.
    # @param implicit_wait seconds for implicit wait
    def set_implicit_wait(implicit_wait)
      @driver.manage.timeouts.implicit_wait = implicit_wait
    end

    # Sets the amount of time to wait for a page load to complete before throwing an error.
    # @param page_load seconds to wait for page to load
    def set_page_load(page_load)
      @driver.manage.timeouts.page_load = page_load
    end

    # Sets the amount of time to wait for an asynchronous script to finish execution before throwing an error.
    # @param script_time seconds to wait for script to complete
    def set_script_timeout(script_timeout)
      @driver.manage.timeouts.script_timeout = script_timeout
    end

    # The URL to navigate to
    # @param navigate_to location for the browser to navigate to
    def set_navigate_to(navigate_to)
      @driver.navigate.to(navigate_to)
    end

    # Function used to override the overall wait in order to find an element within the DOM
    # @param wait_time [Number] represents how long to wait until an error is thrown
    def set_element_find_wait(wait_time)
      @wait = Selenium::WebDriver::Wait.new(:timeout => wait_time)
    end

    # Function used to get the wait object
    # @return [Selenium::WebDriver::Wait] Wait object that does a wait for the object to appear in the DOM
    def get_wait
      @wait
    end

    # Function used to get the Selenium WebDriver
    # @return [Selenium::WebDriver] Selenium webdriver
    def get_selenium_driver
      @driver
    end
  end
end
