class Player
	attr_accessor :name

	def initialize(name)
		@name = name
		#@score = score
		#@battles = battles
	end
end

class Rubymon
	attr_accessor :name, :level, :hp

	def initialize(name, level)
		@name = name
		@level = level
		@hp = hp
	end
end

class WildRubymon
	attr_accessor :name, :level

	def initialize(name, level)
		@name = ['Kibachu', 'Hachipuff', 'Sisimew', 'Olepod', 'Muniensy', 'Caballomon']
		@level = rubymon.level
	end
	#name.shuffle! <----- no deja que el programa corra :(

	def opponent
		opponent_name = []
		opponent_name.push(name.pop)
	end
end

class Battle
		attr_accessor

		def initialize
	@atack
	@defense
	@special
	@run
		end
end

class Game
	attr_accessor :player, :rubymon

	def initialize
		@player = Player.new("name")
		@rubymon = Rubymon.new("name", "level")
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
    rubymon.level = 1
    rubymon.hp = 10
	end

	def show_stats
		puts "*******************"
		puts "#{rubymon.name} "
		puts "Level: #{rubymon.level}"
		puts "HP: #{rubymon.hp}"
		puts "*******************"
	end

	def start
    meet_you
    choose_rubymon
    show_stats
  end

end


game = Game.new
game.start