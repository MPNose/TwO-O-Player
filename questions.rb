class Questions
  def generate_random_numbers
    [rand(1..20), rand(1..20)]
  end
  def ask_question
    num1, num2 = generate_random_numbers #deconstruct the arry of random numbers
    correct_answer = num1 + num2
    puts "What does #{num1} plus #{num2} equal?"
    print "> "
    answer = $stdin.gets.chomp.to_i #to integer, not string
    if answer == correct_answer
      return true
    else
      return false
    end
  end

end
