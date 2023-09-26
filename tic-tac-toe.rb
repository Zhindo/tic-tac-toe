

class Person

    attr_reader :name
    attr_writer :turn

    def initialize(name)
        @name = name
    end

    def show_name
        puts name
    end

end


print "What's the first player's name?: "

first_player_temp = gets.chomp

first_player = Person.new("#{first_player_temp}")

board = Array.new(9)
board = [1, 2, 3, 4, 5, 6, 7, 8, 9]

board = 
<<-Board
#{board[0]} | #{board[1]} | #{board[2]}
--|---|--
#{board[3]} | #{board[4]} | #{board[5]}
--|---|--
#{board[6]} | #{board[7]} | #{board[8]}
Board

