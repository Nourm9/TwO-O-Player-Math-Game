class Player
  attr_reader :name, :lives
  def initialize(name)
    @name=name
    @lives= 3
  end

  def lose_life
    @lives -= 1
  end

  def question
    next_question = Question.new
    next_question.ask(@name)
    print ' > '
    @user_input = $stdin.gets.chomp
    if next_question.answer?(@user_input.to_i)
      puts 'YES! You are correct.'
    else
      puts 'Seriously? No!'
      lose_life
    end
  end
  

  def dead
    @lives == 0
  end
   
  
end
