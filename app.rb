require 'bundler'
Bundler.require

$:.unshift File.expand_path('./../lib/app', __FILE__)
$:.unshift File.expand_path('./../lib/views', __FILE__)

require 'player'
require 'board'
require 'board_case'
require 'game'
require 'show'
require 'application'

# player1 = Player.new(name="Toto", symbol = " ") 
# player2 = Player.new(name="Tata", symbol = " ")

# players = [player1, player2]
# player_picker = rand(0..1)

# play = "y"
# while play == "y"
#     starting_player = players[player_picker]
#     second_player = players[(player_picker == 1) ? 0 : 1]

#     starting_player.symbol = "X"
#     second_player.symbol = "O"    #* change the symbol and the value of the first and second player.
#     starting_player.value = 1     #* The value is used to check wich case is empty and
#     second_player.value = 2       #* how ''possess'' this or this case... .
    
    
#     game = Game.new(starting_player, second_player)
#     game.run_game

#     puts "#{player1.name} won #{player1.victory_count} game(s)"
#     puts "#{player2.name} won #{player2.victory_count} game(s)"

#     # Change first player to play
#     player_picker = (player_picker == 1) ? 0 : 1

#     puts "Do you want to play again ? y/n"
#     play = gets.chomp
#     until play == "y" || play == "n"
#         puts "Please choose between y or n. y for Yes and n for No. bye bye"
#         play = gets.chomp
#     end
#     system("clear")
# end

# puts "Thanks for playing OXO !"