require 'byebug'
class CreditCheck
	def initialize(card_number)
		@card_number = card_number
	end

	def valid?
		# find the number on even index and times 2 to it
		number = @card_number.reverse.gsub(/(.)(.?)/) {|x| $1 + ($2.to_i*2).to_s}
		# sum all digits and check modulo 10
		number.split('').map(&:to_i).inject(:+)%10 == 0
	end
end
