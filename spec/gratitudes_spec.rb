require 'gratitudes'

RSpec.describe Gratitudes do
  it "Creates an empty array, adds a gratitude to it and then formats a string of gratitudes" do
    gratitudes = Gratitudes.new
    gratitudes.add("James")
    gratitudes.add("Toby")
    result = gratitudes.format()
    expect(result).to eq "Be grateful for: James, Toby"
  end

end