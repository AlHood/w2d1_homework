require("minitest/autorun")
require("minitest/rg")
require_relative("../Student")

class TestStudent < Minitest::Test

  def setup
    @daniel = Student.new("Daniel", 1)
  end

  def test_student_get_name

    assert_equal("Daniel", @daniel.name)
  end


  def test_student_get_cohort   

    assert_equal(1, @daniel.cohort)

  end

  def test_student_updater

    @daniel.student_updater("Nathaniel", 2)

    assert_equal(2, @daniel.cohort)
    assert_equal("Nathaniel", @daniel.name)
  end

  def test_student_speech

    response = @daniel.student_speech

    assert_equal("I will talk!", response)

  end
  

  def test_student_loyalty

    response = @daniel.interrogate("Ruby")

    assert_equal("I love Ruby!", response)
  end





end