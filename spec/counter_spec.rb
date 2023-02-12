require 'counter'

RSpec.describe Counter do
  it "adds a number to the counter" do
    counter = Counter.new
    counter.add(8)
    result = counter.report
    expect(result).to eq "Counted to 8 so far."
  end

end

