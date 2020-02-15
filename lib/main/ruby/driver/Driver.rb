require "selenium-webdriver"

class Driver
  @driver

  # Pass in an instance of the driver
  def initialize(driver)
    @driver = driver
  end

  # Set the amount of time the driver should wait when searching for elements.
  def implicit_wait
  end

  def initialize
  end

  # Sets the amount of time to wait for a page load to complete before throwing an error.
  def page_load
  end

  # Sets the amount of time to wait for an asynchronous script to finish execution before throwing an error.
  def script_tiemout
  end

  # The URL to navigate to
  def navigate_to
  end
end
