# @author Patrique Legault
module LegoTechSelenium
  class Action

    # The constructor of the Action class
    # @param driver [Driver] The driver object that represents the instance that is connected to the browser
    # @param action [Hash] A ruby object that has the following layout
    #   {
    #        :field => Fields::...
    #        :identifier => Identifier::...
    #        :value => String
    #   }
    def initialize(action, driver)
      @driver = driver
      @action = action
    end

    # A function that performs the given action against the webpage given the driver and the action
    #
    def test()
      raise "Test function in the Actions.rb file has not been overriden"
    end
  end
end
