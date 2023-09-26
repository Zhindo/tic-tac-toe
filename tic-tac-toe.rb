
# Make an array with 9 values from 1-9
board = Array.new(9)
board = [1, 2, 3, 4, 5, 6, 7, 8, 9]

# Make a board for the game
board = 
<<-Board
#{board[0]} | #{board[1]} | #{board[2]}
--|---|--
#{board[3]} | #{board[4]} | #{board[5]}
--|---|--
#{board[6]} | #{board[7]} | #{board[8]}
Board


class Person

    attr_accessor :name

    def initialize(name)
        @name = name
    end

end

class First < Person

    attr_reader :piece
    attr_accessor :score

    def initialize(name)
        super(name)
        @piece = "X"
        @score = 0
    end

    def show_name
        puts "Hello, my name is " + name
    end

    def show_piece
        puts piece
    end

    def add_score
        self.score += 1
    end

    def show_score
        puts score
    end

end

class Second < Person
    
    attr_reader :piece
    attr_accessor :score

    def initialize(name)
        super(name)
        @piece = 'O'
        @score = 0
    end

    def show_name
        puts "Hello, my name is " + name
    end

    def show_piece
        puts piece
    end

    def add_score
        self.score += 1
    end

    def show_score
        puts score
    end

end

def game(first_player, second_player)

    print first_player.show_score

    first_player.add_score

    print first_player.show_score

    if first_player.score == 1
        puts "#{first_player.name} won"
    end

end


print "What's the first player's name?: "

temp = gets.chomp

first_player = First.new("#{temp}")

print "What is the second player's name?: "

temp = gets.chomp

second_player = Second.new("#{temp}")

game(first_player, second_player)