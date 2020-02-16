require_relative "ui/test-suites/TestSuiteTest"
require_relative "ui/test-cases/TestCaseTest"

class TestAll
  def test_suites
    TestSuiteTest.new.run_all
    TestCaseTest.new.run_all
  end
end
