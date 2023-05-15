class Game

def initialize(name)
  @name = name
  @player_1 = Player.new('Player 1')
  @player_2 = Player.new('Player 2')
end
 
def begin_game
  puts "Lets start the game! #{player_1} has #{} lives and #{player_1} has #{} lives. The last one to stay alive wins."
end

def score
 puts "P1: #{@player_1.lives}/3 vs P2: #{@player_2.lives}/3"
end
 
  def winner(player)
    puts "#{player.name} wins with the score of #{player.lives}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
    exit(true)
  end

 def check_for_winner
    if @player_1.dead
      winner(@player_2)
    elsif @player_2.dead
      winner(@player_1)
    end
  end
 
def turn
  @player_1.question
  check_for_winner
  @player_2.question
  check_for_winner
  score
  puts '----- NEW TURN -----'
  turn
end



end