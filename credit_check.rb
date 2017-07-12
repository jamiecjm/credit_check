require 'byebug'
class CreditCheck
	def initialize(card_number)
		@card_number = card_number
	end

	def valid?
		numbers = @card_number.reverse.chars.map(&:to_i)
		numbers.each_with_index.inject(0) { |sum,(i,j)| 
			num = j.odd? ? (i*2).divmod(10).inject(:+) : i;
			sum+num
		}%10 == 0
	end
end
