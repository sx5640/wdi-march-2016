require_relative 'player.rb'
require 'pry-byebug'

class Game
  attr_reader :width, :height
  attr_accessor :players

  def initialize(number_of_players, width, height)
    @width = width
    @height = height
    @players = []

    number_of_players.times do
      player_x = (0..@width).to_a.sample
      player_y = (0..@height).to_a.sample
      @players << Player.new(player_x, player_y)
    end

  end

  def self.start
    puts "It's Adventure Time!"
    print "How many people are adventuring? "
    number_of_players = gets.chomp.to_i

    game = new(number_of_players, 20, 20)
    game.turn
  end

  def turn
    moves = [1, -1]

    @players.each do |player|
      new_x = moves.sample
      new_y = moves.sample

      if new_x >= 0 && new_x < width
        player.x += new_x
      end

      if new_y >= 0 && new_y < height
        player.y += new_y
      end
    end
  end
end

Game.start
