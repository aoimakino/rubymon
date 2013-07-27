class Player
	attr_accessor :name

	def initialize(name)
		@name = name
		@battles = {"Win" => 0, "Lose" => 0, "Run" => 0}
	end

	def player_stats
		puts "Trainer Stats"
		puts "Name: #{player.name}"
		puts "Rubymon: #{rubymon.name}"
		puts "Battles Won: "
	end
end

class Rubymon
	attr_accessor :name, :level, :hp

	def initialize(name, level, hp)
		@name = name
		@level = level
		@hp = hp
	end

	def rubymon_stats
		puts "*******************"
		puts "Your Rubymon Stats"
		puts "Name: #{rubymon.name}"
		puts "Level: #{rubymon.level}"
		puts "HP: #{rubymon.hp}"
		puts "*******************"
	end
end

class WildRubymon
	attr_accessor :name, :level, :hp

	def initialize(name, level, hp)
		@name = ['Kibachu', 'Hachipuff', 'Sisimew', 'Olepod', 'Muniensy', 'Caballomon']
		@level = rubymon.level
		@hp = hp
	end
	#name.shuffle! <----- no deja que el programa corra :(

	def opponent
		opponent_name = []
		opponent_name.push(name.pop)
	end
end

class Game
	attr_accessor :player, :rubymon

	def initialize
		@player = Player.new("name")
		@rubymon = Rubymon.new("name", 1, 10)
	end

	def meet_you
		puts "Are you ready to become a Rubymon master?"
		puts "I want to ask you some questions"
		puts "Are you boy or girl?"
		gender = gets.chomp
		puts "So, what's your name kiddo?"
		player.name = gets.chomp.capitalize
		puts "Nice to meet you #{player.name}"
	end

	def choose_rubymon
		puts "You need to pick a partner for this adventure"
		puts "These are your choices: Kanizard, Garysaur or Gustoise"
		rubymon.name = gets.chomp.capitalize

    while rubymon.name != 'Kanizard' && rubymon.name != 'Garysaur' && rubymon.name != 'Gustoise'
      puts "You must pick one of these three Rubymon"
		  rubymon.name = gets.chomp.capitalize
		end
  
   	puts "Yeah! I think #{rubymon.name} it's a perfect partner for you"
  	puts "Your #{rubymon.name} starts at level 1, you need to train him in order to get stronger"
	end

	def show_rubymon_stats
		rubymon_stats
	end

	def show_player_stats
		player_stats
	end

	def start
    meet_you
    choose_rubymon
    show_rubymon_stats
    show_player_stats
  end

  def battle

  end

end


game = Game.new
game.start