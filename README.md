# Coding Problem Option 2: CreditCheck
Uses Luhn Algorithm to validate a credit card number

#### Usage
Initliaze a CreditCheck object  
```
credit_check = CreditCheck.new(card_number)
```
Validate a card number  
```
credit_check = CreditCheck.new("342804633855673")
credit_check.valid?  #=> true
credit_check = CreditCheck.new("342801633855673")
credit_check.valid?  #=> false
```
#### Testing

run ```rspec test.rb``` from command line

