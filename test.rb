require 'rspec'
require_relative 'credit_check'
describe "CreditCheck" do
  let(:correct_data) { "79927398713" }
  let(:wrong_data) { "342801633855673" }
  let(:correct_check) { CreditCheck.new(correct_data) }
  let(:wrong_check) { CreditCheck.new(wrong_data) }

  describe "initializing a new CreditCheck object" do
    it "should only take in a string argument" do
      expect(correct_check).to be_a(CreditCheck)
    end
  end

  describe "valid?" do
    it "should return true if number is valid" do
      expect(correct_check.valid?).to eq(true)
    end

    it "should return false if number is valid" do
      expect(wrong_check.valid?).to eq(false)
    end
  end

end
