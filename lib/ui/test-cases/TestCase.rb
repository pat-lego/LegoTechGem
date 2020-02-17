require_relative "../actions/Action"

# @author Patrique Legault
module LegoTechSelenium
  class TestCase
    def initialize(name, driver)
      if name.nil? or name.empty?
        raise "All TestCasses must have a name associated to them"
      end

      if driver.nil?
        raise "The driver is nil in the TestCase"
      end
      @name = name
      @driver = driver

      @actions = []
    end

    # Function used to add an action to the list of actions to later be invoked
    # @param action [Action] an object that represents a list of events to invoke
    # @return nil
    def addAction(action)
      if action.nil?
        raise "Cannot pass a nil action to TestCase"
      end

      unless action.instance_of? Action
        raise "action is not an instance of Action within TestCase"
      end
      @actions.push(action)
      return nil
    end

    # Function used to get the name of the Test Case instance
    # @return [String] Name of the Test Case Instance
    def getName()
      @name
    end

    # Function get the number of actions within the TestCase
    # [Number] The number of actions within the TestCase
    def getNumberOfActions()
      @actions.size
    end

    # Function used to invoke all of the actions within the list
    def run()
      @actions.each do |action|
        action.test()
      end
    end

    class Builder
      def initialize(name, driver)
        @testCase = TestCase.new(name, driver)
      end

      # Function used to add an action using a Builder class
      # @param action [Action] The action to add to the list of actions
      # @return [Builder] the Builder class
      def addAction(action)
        @testCase.addAction(action)
        self
      end

      # A function the return the built TestCase
      # @return [TestCase] The built TestCase
      def build
        @testCase
      end
    end
  end
end
