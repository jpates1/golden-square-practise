require 'present'

#testing whether the functionality works
RSpec.describe Present do
  it "adds a wraps a present then unwraps it" do
    present = Present.new
    present.wrap("Toys")
    result = present.unwrap()
    expect(result).to eq "Toys"
  end

#test for first error 

  context "when there are already presents wrapped" do
    it "fails" do
      present = Present.new
      expect { present.wrap("bear"); present.wrap("bear") }.to raise_error "A contents has already been wrapped."
    end
  end

  context "When contents is empty" do
    it "fails" do
      present = Present.new
      expect { present.unwrap}.to raise_error "No contents have been wrapped."
    end
  end  
end




  # class Present
  #   def wrap(contents)
  #     fail "A contents has already been wrapped." unless @contents.nil?
  #     @contents = contents
  #   end
  
  #   def unwrap
  #     fail "No contents have been wrapped." if @content.nil?
  #     return @contents
  #   end
  # end


  # require 'reminder'

# RSpec.describe Reminder do
#   it "reminds the user to do a task" do
#     reminder = Reminder.new("Kay")
#     reminder.remind_me_to("Walk the dog")
#     result = reminder.remind()
#     expect(result).to eq "Walk the dog, Kay!"
#   end

#   context "when no task is set" do
#     it "fails" do
#       reminder = Reminder.new("Kay")
#       expect { reminder.remind() }.to raise_error "No reminder set!"
#     end
#   end
  
# end