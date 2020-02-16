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

    def addAction(action)
      if action.nil?
        raise "Cannot pass a nil action to TestCase"
      end

      unless action.instance_of? Action
        raise "action is not an instance of Action within TestCase"
      end
      @actions.push(action)
    end

    class Builder
      def initialize(name, driver)
        @testCase = TestCase.new(name, driver)
      end

      def addAction(action)
        @testCase.addAction(action)
      end
    end
  end
end
