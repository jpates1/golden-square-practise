require 'password_checker'

RSpec.describe PasswordChecker do
  it "Checks the length of the password" do
    password_checker = PasswordChecker.new
    result = password_checker.check("jamesandrewpates")
    expect(result).to eq true
  end

  context "when the password is less than 8 characters" do
    it "fails" do
      password_checker = PasswordChecker.new
      expect { password_checker.check("small") }.to raise_error "Invalid password, must be 8+ characters"
    end
  end
end
