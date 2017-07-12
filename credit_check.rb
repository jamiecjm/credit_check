require 'byebug'
class CreditCheck
	def initialize(card_number)
		@card_number = card_number
	end

	def valid?
		# reverse card_number and times 2 for every second number
		numbers = @card_number.reverse.chars.each_slice(2).flat_map {|odd,even| [odd.to_i,(even.to_i*2).divmod(10)]}
		# remove nested brackets and sum all digits
		numbers.flatten.inject(:+)%10 == 0
	end
end

cc = CreditCheck.new("342804633855673")
cc.valid?