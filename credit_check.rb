require 'byebug'
class CreditCheck
	def initialize(card_number)
		@card_number = card_number
	end

	def valid?
		# get the number on odd index
		odd_number = @card_number.reverse.gsub(/(.).?/, '\1')
		# get the number on even index and times two to it
		even_number = @card_number.reverse.gsub(/.(.?)/, '\1').to_i*2
		# sum all digits and check modulo 10
		(odd_number+even_number.to_s).split('').map(&:to_i).inject(:+)%10 == 0

	end
end
