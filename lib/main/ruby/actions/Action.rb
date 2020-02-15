# @author Patrique Legault
class Actions

  # A function that performs the given action against the webpage given the driver and the action
  #
  # @param driver [Driver] The driver object that represents the instance that is connected to the browser
  # @param action [Hash] A ruby object that has the following layout
  #   {
  #        :field => Fields::...
  #        :identifier => Identifier::...
  #        :value => String
  #   }
  # @return void
  # @raise Selenium Exceptions
  def test(driver, action)
    raise "Test function in the Actions.rb file has not been overriden"
  end
end
