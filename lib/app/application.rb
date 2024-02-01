class Application
system("clear")
  
    a = Artii::Base.new                 # Call this def if you want to transform a str into ascii
   puts a.asciify("Welcome Little Morpion !").magenta


  puts Rainbow("Hello Player 1, what's your name ?").darkturquoise.underline
    name1 = gets.chomp
  puts Rainbow("Hello Player 2, what's your name ?").hotpink.underline
    name2 = gets.chomp

  system("clear")

  player1 = Player.new(name=Rainbow(name1).darkturquoise, symbol = " ") 
  player2 = Player.new(name=Rainbow(name2).hotpink, symbol = " ")
  players = [player1, player2]
  player_picker = rand(0..1)

  play = "y"
  while play == "y"
    starting_player = players[player_picker]
    second_player = players[(player_picker == 1) ? 0 : 1]
    starting_player.symbol = Rainbow("X").darkturquoise
    second_player.symbol = Rainbow("O").hotpink    #* change the symbol and the value of the first and second player.
    starting_player.value = 1     #* The value is used to check wich case is empty and
    second_player.value = 2       #* how ''possess'' this or this case... .
    
    game = Game.new(starting_player, second_player)
    game.run_game

    puts "#{player1.name} won #{player1.victory_count} game(s)"
    puts "#{player2.name} won #{player2.victory_count} game(s)"

    # Change first player to play
    player_picker = (player_picker == 1) ? 0 : 1

    puts "Do you want to play again ? y/n"
    play = gets.chomp
    until play == "y" || play == "n"   #* Break the loop While if a player said "n"
        puts "Please choose between y or n. y for Yes and n for No. bye bye"
        play = gets.chomp
    end
    system("clear")
  end

  print a.asciify("Thanks for playing ")
  puts a.asciify("O").black
  puts a.asciify("X").yellow
  puts a.asciify("O").red

end