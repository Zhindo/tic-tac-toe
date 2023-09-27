
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
        self.name
    end

    def show_piece
        self.piece
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
        self.name
    end

    def show_piece
        self.piece
    end

    def add_score
        self.score += 1
    end

    def show_score
        puts score
    end

end



print "What's the first player's name?: "

temp = gets.chomp

first_player = First.new("#{temp}")

print "What is the second player's name?: "

temp = gets.chomp

second_player = Second.new("#{temp}")





def game(first_player, second_player)

    # Make an array with 9 values from 1-9


    def round(first_player, second_player, board, board_tiles)

        round_winner = 'none'

        while round_winner == 'none'

            if (board_tiles[0].eql?('X') && board_tiles[1].eql?('X') && board_tiles[2].eql?('X')) == true || (board_tiles[0].eql?('X') && board_tiles[1].eql?('X') && board_tiles[2].eql?('X')) == true || (board_tiles[3].eql?('X') && board_tiles[4].eql?('X') && board_tiles[5].eql?('X')) == true || (board_tiles[6].eql?('X') && board_tiles[7].eql?('X') && board_tiles[8].eql?('X')) == true || (board_tiles[0].eql?('X') && board_tiles[3].eql?('X') && board_tiles[6].eql?('X')) == true || (board_tiles[1].eql?('X') && board_tiles[4].eql?('X') && board_tiles[7].eql?('X')) == true || (board_tiles[2].eql?('X') && board_tiles[5].eql?('X') && board_tiles[8].eql?('X')) == true || (board_tiles[0].eql?('X') && board_tiles[4].eql?('X') && board_tiles[8].eql?('X')) == true || (board_tiles[2].eql?('X') && board_tiles[4].eql?('X') && board_tiles[6].eql?('X')) == true
                round_winner = first_player.show_name
                puts "The winner of this round is #{first_player.show_name}"
            else
                board_temp =
                <<-Board
                #{board_tiles[0]} | #{board_tiles[1]} | #{board_tiles[2]}
                --|---|--
                #{board_tiles[3]} | #{board_tiles[4]} | #{board_tiles[5]}
                --|---|--
                #{board_tiles[6]} | #{board_tiles[7]} | #{board_tiles[8]}
                Board

                board = board_temp

                print "#{first_player.show_name}'s turn. Pick between 1-9: "
                first_player_tile = gets.chomp.to_i

                while first_player_tile == 0 || first_player_tile > 9
                    puts "Wrong Input. Try again."
                    print "Pick a number between 1-9: "
                    first_player_tile = gets.chomp.to_i
                end

                board_tiles[first_player_tile - 1] = first_player.piece

                puts "\n"

                puts board

                print "#{second_player.show_name}'s turn. Pick between 1-9: "
                second_player_tile = gets.chomp.to_i

                while second_player_tile == 0 || first_player_tile > 9
                    puts "Wrong Input. Try again."
                    print "Pick a number between 1-9: "
                    second_player_tile = gets.chomp.to_i
                end

                board_tiles[second_player_tile - 1] = second_player.piece

                puts "\n"

                puts board
            end

        end
    end

    rounds = 0

    while rounds < 2

        board_tiles = [1, 2, 3, 4, 5, 6, 7, 8, 9]

        board = 
                <<-Board
                #{board_tiles[0]} | #{board_tiles[1]} | #{board_tiles[2]}
                --|---|--
                #{board_tiles[3]} | #{board_tiles[4]} | #{board_tiles[5]}
                --|---|--
                #{board_tiles[6]} | #{board_tiles[7]} | #{board_tiles[8]}
                Board

                puts board

        round(first_player, second_player, board, board_tiles)

        rounds += 1
        
    end

    #puts "\n" + board + "\n"

    #puts "#{first_player.name}: #{first_player.score} | #{second_player.name}: #{second_player.score}"

    


end


game(first_player, second_player)