require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require "application" 
require "board" 
require "boardcase"
require "game" 
require "player" 
require "show" 

system "clear"
puts "---------- DEBUT DU JEU ------------------"

player1 = Player.new("X")
player2 = Player.new("O")