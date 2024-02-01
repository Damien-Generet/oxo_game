class Game
  attr_accessor :player1, :player2, :board

  def initialize(player1, player2)
    @board = Board.new
    @player1 = player1
    @player2 = player2

    puts "Introducing player 1 #{@player1.name}"
    puts "Introducing player 2 #{@player2.name}"

    @board.display
  end
  
  #! FIRST PLAY ( player )
    def ask_player_play(player)
      @board.display

      #* Choose the case to put X or O
      available_cells = @board.cells.select{|cell| cell.value == 0}.map{|cell| cell.name}
      puts "Hey ! #{player.name}, choose a case to play among #{available_cells.join(" ")}!"
      
      cell_id = gets.chomp
      
      until available_cells.include?(cell_id) 
        puts "This case is not available, please pick a case in #{available_cells}"
        cell_id = gets.chomp
      end

      cell_location = @board.convert_to_i(cell_id)
      return cell_location
    end

    def update_boardcase(cell_location, player)
    #* Change the value of the case
      @board.cells[cell_location].value = player.symbol
    end
  
    #! CHECK CONDITION OF VICTORY
    def check_victory(player)
      win_condition = [["A1","B1","C1"], ["A3", "B2", "C1"], ["A1","B2","C3"],
       ["C1","C2","C3"], ["B1","B2","B3"], ["A1", "A2", "A3"],
        ["A3", "B3", "C3"], ["A2", "B2", "C2"]]

      player_case = @board.cells.select{|cell| cell.value == player.symbol}
      player_case_names = player_case.map{|cell_| cell_.name}
      
      return false if player_case_names.length < 3

      win_condition.each do |combination|
        if combination.all?{|cell| player_case_names.include?(cell)}
          # All the cells of the combination are included in player_case_names
          return true
        end
      end
      return false

    end
    
    def end_game(player, final)
      if final == true
        puts "CONGRATS #{player.name} ! You won !" 
      end
    end
    
    def play_again?
      puts "Do you want to play again ? y/n"
      choice = gets.chomp
      until choice == "y" || choice == "n"
        puts "Please choose between y or n. y for Yes and n for No. bye bye"
        choice = gets.chomp
      end
      return choice
    end

    def perform
      (1..9).each do |turn|
        player = turn.odd? ? @player1 : @player2

        cell_location = ask_player_play(player) 
        update_boardcase(cell_location, player)
        if check_victory(player)
          final = true
          end_game(player, final)
          @board.display
          break
        end
        if turn == 9
          puts "Too bad, this is a draw !"
        end
      end
    end
end