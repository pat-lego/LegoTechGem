# @author Patrique Legault

require_relative "../enums/FieldType"
require_relative "../validate/ValidateElement"

module LegoTechSelenium
  class Action

    # The constructor of the Action class
    # @param driver [LegoTechSelenium::Driver] The driver object that represents the instance that is connected to the browser
    # @param action [Hash] A ruby object that has the following layout
    #   {
    #        :fieldtype => Fields::...
    #        :identifier => Identifier::...
    #        :value => String
    #        :validate => True -> Verify the value before continuing to the next action. False -> skip validation.
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
    # @raise [RuntimeError] FieldType is not supported
    def test()
      element = @wait.until { @selenium_driver.find_element(@action[:identifier], @action[:fieldname]) }

      case @action[:fieldtype]
      when LegoTechSelenium::FieldType::INPUT
        executeInput(element)
      when LegoTechSelenium::FieldType::DROPDOWN_LIST
        executeSelect(element)
      when LegoTechSelenium::FieldType::BUTTON
        executeButton(element)
      when LegoTechSelenium::FieldType::CHECK_BOX
        executeCheckBox(element)
      when LegoTechSelenium::FieldType::RADIO_BUTTON
        executeRadioButton(element)
      else
        raise "Could not locate the field type to perform the action on, received the following field #{@action[:fieldtype].downcase}. Currently only supports the fields within FieldType.rb"
      end

      if @action[:validate] == true
        unless LegoTechSelenium::ValidateElement.new(@action, element).validate
          raise "Failed to validate the #{@action[:fieldname]} is set to \"#{@action[:value]}\""
        end
      else
        puts "Skipping assertion for #{self.class.name}"
      end
    end

    # Perform the input exection on the element
    # @param element [Selenium::WebDriver::Element]
    def executeInput(element)
      element.send_keys(@action[:value])
    end

    # Perform the input exection on the element
    # @param element [Selenium::WebDriver::Element]
    def executeSelect(element)
      dropdown = Selenium::WebDriver::Support::Select.new(element)
      dropdown.select_by(:text, @action[:value])
    end

    # Perform the input exection on the element
    # @param element [Selenium::WebDriver::Element]
    def executeButton(element)
      element.click
    end

    # Perform the check box exection on the element
    # @param element [Selenium::WebDriver::Element]
    def executeCheckBox(element)
      element.click
    end

    # Perform the radio button exection on the element
    # @param element [Selenium::WebDriver::Element]
    def executeRadioButton(element)
      element.click
    end
  end
end
