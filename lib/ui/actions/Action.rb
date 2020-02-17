# @author Patrique Legault

require_relative "../enums/FieldType"

module LegoTechSelenium
  class Action

    # The constructor of the Action class
    # @param driver [LegoTechSelenium::Driver] The driver object that represents the instance that is connected to the browser
    # @param action [Hash] A ruby object that has the following layout
    #   {
    #        :fieldtype => Fields::...
    #        :identifier => Identifier::...
    #        :value => String
    #   }
    def initialize(action, driver)
      @driver = driver
      @action = action
      @wait = @driver.get_wait
      @selenium_driver = @driver.get_selenium_driver

      if @driver.nil?
        raise "Cannot have a nil driver within the Action class"
      end

      if @action.nil? or @action.empty?
        raise "Cannot have a nil or empty action hash within the Action class"
      end
    end

    # A function that performs the given action against the webpage given the driver and the action
    #
    def test()
      element = @wait.until { @selenium_driver.find_element(@action[:identifier], @action[:fieldname]) }

      case @action[:fieldtype]
      when LegoTechSelenium::FieldType::INPUT
        executeInput(element)
      else
        raise "Could not locate the field type to perform the action on, received the following field #{@action[:fieldtype].downcase!}. Currently only supports the fields within FieldType.rb"
      end
    end

    # Perform the input exection on the element
    # @param element [Selenium::WebDriver::Element]
    def executeInput(element)
      element.send_keys(@action[:value])
    end
  end
end
