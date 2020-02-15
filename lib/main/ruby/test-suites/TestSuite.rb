class TestSuite

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

  # Function used to add a TestCase to thee TestSuite
  # @param testCase [TestCase] A test case to be executed
  def addTestCase(testCase)
    @entries.push(testCase)
  end

  # Retrieve the name of the TestSuite
  # @return [String] The name of the TestSuite
  def getName()
    return @name
  end

  # Retrieve the number of TestCases within the TestSuite
  # @return [Number] Number of TestCases
  def getNumberOfTestCases
    return @entries.size
  end

  # Function that will invoke all test cases
  def run()
    raise "Not yet built"
  end

  class Builder
    # Constructor for internal builder
    # @param name [String] The name of the class
    # @param driver [Driver] The driver of the class
    def initialize(name, driver)
      @testSuites = TestSuites.new(name, driver)
    end

    # Add a test case to the test suite
    # @param TestsCase [TestCase] to be added to the list
    # @return self
    def addTestCase(testCase)
      @testSuites.addTestCase(testCase)
      self
    end

    # Returns an instance of TestSuite
    # @return TestSuite instance
    def build
      @testSuites
    end
  end
end
