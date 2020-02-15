require_relative "test-suites/TestSuitesTest"

class TestAll
  def test_suites
    TestSuiteTest.new.run_all
  end
end
