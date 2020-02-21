require_relative "../enums/FieldType"

module LegoTechSelenium
  class ValidateElement

    # The constructor of the Action class
    # @param element [Selenium::WebDriver::Element]
    # @param action [Hash] A ruby object that has the following layout
    #   {
    #        :fieldtype => Fields::...
    #        :identifier => Identifier::...
    #        :value => String
    #        :validate => True -> Verify the value before continuing to the next action, skip validation
    #   }
    def initialize(action, element)
      if action.nil? or action.empty?
        raise "Cannot submit a nil or empty action within the Validate class"
      end

      if element.nil?
        raise "Cannot submit a nil Selenium element within the Validate class"
      end

      # Set instance variables
      @action = action
      @element = element
    end

    # Function used to validate the element is correctly set
    # @return True if correctly validated, False if incorrectly validated
    # @raise [RuntimeError] FieldType is not supported
    def validate()
      case @action[:fieldtype]
      when LegoTechSelenium::FieldType::INPUT
        return validateInput
      when LegoTechSelenium::FieldType::DROPDOWN_LIST
        return validateSelect
      else
        raise "Cannot validate this field type please refer to the validate function within the Validate class for further details"
      end
    end

    # Validates the value of an input field
    # return True -> action value is equal to the input field value
    def validateInput()
      puts "Asserting that #{LegoTechSelenium::FieldType::INPUT} with field name #{@action[:fieldname]} is set to \"#{@action[:value]}\""
      return @action[:value].eql? @element.attribute("value")
    end

    # Validates the value of an input field
    # return True -> action value is equal to the input field value
    def validateSelect()
      puts "Asserting that #{LegoTechSelenium::FieldType::DROPDOWN_LIST} with field name #{@action[:fieldname]} is set to \"#{@action[:value]}\""
      return @action[:value].eql? Selenium::WebDriver::Support::Select.new(@element).first_selected_option.text
    end
  end
end
