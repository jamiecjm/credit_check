require 'byebug'
class CreditCheck
	def initialize(card_number)
		@card_number = card_number
	end

	def valid?
		# convert string into integer
		numbers = @card_number.reverse.chars.map(&:to_i)
		# sum all integer
		numbers.each_with_index.inject(0) { |sum,(i,j)| 
			# times 2 to every 2nd number and sum the digits
			num = j.odd? ? (i*2).divmod(10).inject(:+) : i;
			sum+num
		}%10 == 0
	end
end
