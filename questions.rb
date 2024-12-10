class Questions
  def generate_random_numbers
    [rand(1..20), rand(1..20)]
  end
  def ask_question
    num1, num2 = generate_random_numbers
    correct_answer = num1 + num2
    puts "What does #{num1} plus #{num2} equal?"
    print "> "
    answer = $stdin.gets.chomp.to_i
    if answer == correct_answer
      puts "Yes! you are correct"
    else
      puts "Incorrect answer"
    end
  end

end
