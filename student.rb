class Student
  attr_reader :name, :cohort


  def initialize(student_name, cohort)
    @name = student_name
    @cohort = cohort

  end


  def student_updater(new_name, new_cohort)
    @name = new_name
    @cohort = new_cohort 
  end

  def student_speech
    return "I will talk!"
  end

  def interrogate(string)
    return "I love #{string}!"
  end



end