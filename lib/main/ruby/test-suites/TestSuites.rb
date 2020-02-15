class TestSuites
  class Builder
    def initialize(name, driver)
      @testSuites = TestSuites.new(name, driver)
    end

    def addTestCase(testCase)
      @testSuites.addTestCase(testCase)
      self
    end

    def build
      @testSuites
    end
  end

  # @param name [String] is the name of the TestSuite
  # @param driver [Driver] is the driver variable
  def initialize(name, driver)
    if name.nil? or name.empty?
      raise "All TestSuites must have a name associated to them"
    end

    if driver.nil?
      raise "Driver must be non nil"
    end
    @name = name
    @driver = driver
    @entries = []
  end

  def addTestCase(testCase)
    @entries.push(testCase)
  end

  def getName()
    return @name
  end

  def getNumberOfTestCases
    return @entries.size
  end

  def run()
  end
end
