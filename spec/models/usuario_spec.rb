require 'spec_helper'

describe Usuario do
  
it "is invalid without a nickname" do

expect(Usuario.new(nickname: nil)).to have(1).errors_on(:nickname)

end

it "is valid if the users starts in level 1" do
user = Usuario.new
expect(user.nivel).to equal(1)

end

it "is valid if the user start with 0 deads and deaths" do

user= Usuario.new
expect(user.muertes && user.total_matados).to equal(0)

end



end
