class Player
	def get_guess
		loop do
			print "Enter your guess (e.g. RGBY): "
			input = gets.chomp.upcase.chars
			if valid_input?(input)
				return input
			else
				puts "Invalid guess. Use 4 letters from: #{Code::COLORS.join(", ")}"
			end
		end
	end

	private

	def valid_input?(input)
		input.length == Code::CODE_LENGTH && input.all? { |c| Code::COLORS.include?(c) }
	end
end