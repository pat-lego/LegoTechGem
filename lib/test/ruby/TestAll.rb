require_relative "test-suites/TestSuitesTest"

class TestAll
  def test_suites
    TestSuitesTest.new.run_all
  end
end
