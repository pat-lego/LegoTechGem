require_relative "ui/test-suites/TestSuiteTest"

class TestAll
  def test_suites
    TestSuiteTest.new.run_all
  end
end
