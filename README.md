# Coding Problem Option 2: CreditCheck
Uses Luhn Algorithm to validate a credit card number

#### Usage
Initliaze a CreditCheck object  
card_number is a string of numbers
```
credit_check = CreditCheck.new(card_number)
```
Validate a card number  
return true if valid and vice versa
```
credit_check.valid?
```
#### Testing
```
run rspec test.rb from command line
```
