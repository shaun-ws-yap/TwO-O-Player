class Question
  attr_accessor :result, :first_number, :second_number

  # initialize random question to be added
  def initialize()
    @first_number = rand(1..20)
    @second_number = rand(1..20)
    @result = self.first_number + self.second_number
  end

  # generate question
  def question()
    puts "What does #{self.first_number} plus #{self.second_number} equal?"
  end

  # checking answer logic
  def answer(ans)
    if ans === self.result
      return true
    else
      return false
    end
  end
end
