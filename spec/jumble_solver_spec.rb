require "jumble_solver"

describe "jumble solver" do

  before(:each) do
    @j = JumbleSolver::Jumble.new()
  end

  context "Solvable words" do
    it "should return the array of valid words" do
      valid_words = @j.solve("art")
      expect(valid_words).to be_kind_of(Array)
      expect(valid_words).to_not be_empty
    end
  end

  context "Unsolvable words" do
    it "should return an empty array" do
      valid_words = @j.solve("huahua")
      expect(valid_words).to be_kind_of(Array)
      expect(valid_words).to be_empty
    end
  end

  context "Accuracy of the result" do
    it "should return correct words" do
      valid_words = @j.solve("rat")
      expect(valid_words).to include("art")
      expect(valid_words).to include("rat")
      expect(valid_words).to include("tar")
    end
  end

end
