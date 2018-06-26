Sandwich = Struct.new(:taste, :toppings)
# describe 
# it 
# expect
# these are the core methods of the RSpec API
RSpec.describe 'An ideal sandwich' do 
  before { @sandwich = Sandwich.new('delicious', []) } 
	it 'is delicious' do 
	  taste = @sandwich.taste

    expect(taste).to eq('delicious')
  end 
    
  it 'lets me add toppings' do 
    toppings = @sandwich.toppings
    @sandwich.toppings << 'cheese'

    expect(toppings).not_to be_empty
	end 
end 

# The outer part RSpec.describe block creates an Example Group.
# An Example Group describes What you are testing.
# In this case it is testing the sandwich.
# So it keeps the specs related to the sandwich together.
#
# What is the difference b/t tests, specs & examples?
#
# A test validates that a bit of code is working properly.
# A spec describes the desired behavior of a bit of code. 
# An example shows how a particular API is intended to be used. 
#
# - So RSpec.describe = example group
# - it = individual test
# - expect = assertion, verifies an expected outcome
#
# This spec serves 2 purposes
# 1. Document what the sandwich should do.
# 2. Check that the sandwich does what it should. 
#
# The second test negates the expectation using not_to instead of to
# It also checked whether a collection (in this case an array) is empty
# by using be_empty along with the not_to 
