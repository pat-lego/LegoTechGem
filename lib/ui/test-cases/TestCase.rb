module LegoTechSelenium
  class TestCase
    def initialize(name)
      if name.nil? or name.empty?
        raise "All TestCasses must have a name associated to them"
      end

      @name = name
    end
  end
end
