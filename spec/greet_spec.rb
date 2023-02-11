# require 'add_five'

# RSpec.describe "add_five method" do
#   it "adds 5 to 3 to return 8" do
#     result = add_five(3)
#     expect(result).to eq 8
#   end
# end


require 'greet'

RSpec.describe "greet method" do
  it "adds the name to hellow to return Hello, Name" do
    result = greet("James")
    expect(result).to eq "Hello, James!"
  end
end