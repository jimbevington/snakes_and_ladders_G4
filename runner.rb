require_relative('./board.rb')
require_relative('./dice.rb')
require_relative('./player.rb')
require_relative('./modifier.rb')
require_relative('./game.rb')

p "Welcome to Snakes and Ladders"

p "Input name of player 1"
name1 = gets.chomp()
p "Input name of player 2"
name2 = gets.chomp()


dice = Dice.new
player1 = Player.new(name1)
player2 = Player.new(name2)
players = [player1, player2]
tiles = (1..100).to_a()
board = Board.new(tiles)
mod1 = Modifier.new(5, 20)
mod2 = Modifier.new(85, 12)
mod3 = Modifier.new(10, 80)
mod4 = Modifier.new(35, 60)
mod5 = Modifier.new(99, 2)
modArray = [mod1, mod2, mod3, mod4, mod5]
game = Game.new(players, dice, modArray, board)

p "player 1 is " + name1
p "player 2 is " + name2

p name1 + "press a key to roll dice"
gets.chomp

while game.inplay do
p "someting"
  game.take_turn

end

p "thanks for playing"
