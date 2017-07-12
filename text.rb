require 'rspec'
require_relative 'credit_check'
describe "CreditCheck" do
  let(:board_string) { "800000500004000000005800906003070200540000000700054000000200001300000000008900000" }
  let(:new_sudoku_object) { Sudoku.new(board_string) }
  let(:solution) { "816429537934567128275813946693178254541692783782354619457236891329781465168945372" }
  let(:row) {new_sudoku_object.sudoku[0]}
  let(:cell_solutions) { [1, 2, 3, 6, 7, 9] }

  describe "initializing a new Sudoku object" do
    it "should only take in a string argument" do
      expect(new_sudoku_object).to be_a(Sudoku)
    end
  end

  describe "#solve!" do
    it "should be able to solve any string" do
      expect(new_sudoku_object.solve!).to eq(solution)
    end
  end

  describe "find_solutions" do
    it "should return an array of possible solutions for a given cell" do
      expect(new_sudoku_object.find_solutions(row,0,1)).to eq(cell_solutions)
    end
  end

  describe "solved?" do
    it "should return true if sudoku is solved" do
      new_sudoku_object.solve!
      expect(new_sudoku_object.solved?).to eq(true)
    end

    it "should return false if sudoku is not solved" do
      expect(new_sudoku_object.solved?).to eq(false)
    end
  end
end
