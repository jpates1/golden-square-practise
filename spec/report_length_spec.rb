require 'report_length'

RSpec.describe "report_length method" do
  it "check to see if string length is correct" do
    result = report_length("superdupa")
    expect(result).to eq "This string was 9 characters long."
  end
end