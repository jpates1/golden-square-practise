require 'check_codeword'

RSpec.describe "check_codeword method" do
  it "checks to see if codeword arg is equal to 'horse'" do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end

  it "if the first and last letters of the arg are h & e" do
    result = check_codeword("home")
    expect(result).to eq "Close, but nope."
  end

  it "if the arg is anything else" do
    result = check_codeword("james")
    expect(result).to eq "WRONG!"
  end
end