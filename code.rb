class Code
	COLORS = %w[R G B Y O P]
	CODE_LENGTH = 4

	attr_reader :pegs

	def initialize(pegs = Code.random_code)
		@pegs = pegs
	end

	def self.random_code
		Array.new(CODE_LENGTH) { COLORS.sample }
	end

	def feedback(guess)
		exact = 0
		color_only = 0

		secret_copy = @pegs.dup
		guess_copy = guess.dup

		guess_copy.each_with_index do |peg, idx|
			if peg == secret_copy[idx]
				exact += 1
				guess_copy[idx] = nil
				secret_copy[idx] = nil
			end
		end

		guess_copy.compact.each do |peg|
			if secret_copy.include?(peg)
				color_only += 1
				secret_copy[secret_copy.index(peg)] = nil
			end
		end

		[exact, color_only]
	end
end