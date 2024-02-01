require 'bundler'
Bundler.require

$:.unshift File.expand_path('./../lib/app', __FILE__)
require 'player'
require 'board'
require 'board_case'
require 'game'

player1 = Player.new(name="Toto", symbol=1)
player2 = Player.new(name="Tata", symbol=2)

game1 = Game.new(player1, player2)
game1.perform