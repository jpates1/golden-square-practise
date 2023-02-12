require 'string_builder'

RSpec.describe StringBuilder do
  it "Adds a string to str and returns the string" do
    string_builder = StringBuilder.new
    string_builder.add("This is but a test")
    result = string_builder.output
    expect(result).to eq "This is but a test"
  end

end