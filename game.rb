require_relative 'code'
require_relative 'player'

class Game
	def initialize
		@secret_code = Code.new
		@player = Player.new
	end

	def play
		puts "Welcome To Mastermind!"
		puts "Available colors: #{Code::COLORS.join(", ")}"
		puts "You have 12 tries to guess the code."

		12.times do |turn|
			puts "\nTurn #{turn + 1}:"
			guess = @player.get_guess
			exact, color_only = @secret_code.feedback(guess)

			puts "Feedback: #{exact} exact, #{color_only} color-only"

			if exact == 4
				puts "You cracked the code!"
				return
			end
		end

		puts "\nYou lost. The secret code was: #{@secret_code.pegs.join}"
	end
end


Game.new.play