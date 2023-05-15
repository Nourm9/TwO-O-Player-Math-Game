class Question 
def initialize
  @num_1 = rand(1..20)
  @num_2 = rand(1..20)
  @sum = @num_1 + @num_2
end

def ask(player)
 puts "#{player}: What is #{@num_1} + #{@num_2}? "
end

def answer?(input)
  @sum == input
end

end
