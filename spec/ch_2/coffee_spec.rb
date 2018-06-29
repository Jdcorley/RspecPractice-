class Coffee 
  def ingredients
    @ingredients ||= []
  end 

  def add(ingredient)
    ingredients << ingredient 
  end 

  def price
    1.00 + ingredients.size * 0.25
  end 
end 
# --only-failures
#set file path for rspec to store failed examples 
RSpec.configure do |config|
  config.filter_run_when_matching(focus: true) 
  config.example_status_persistence_file_path = 'spec/example.txt'
end 

RSpec.describe 'A cup of coffee' do 
  let(:coffee) { Coffee.new } 

  it 'costs $1' do 
    expect(coffee.price).to eq(1.00)
  end

  it 'is light in color' do 
    pending 'Color not yet implemented'
    expect(coffee.color).to be(:light)
  end 

  it 'is cooler than 200 degrees Fahrenheit' do 
    pending 'Temperature not yet implemented'
    expect(coffee.temperature).to be < 200.0
  end 

# the context block groups a set of 
# examples along with their setup code
# together with a common 'context'
# Context is an alias of describe 

  context 'with milk' do 
    before {coffee.add :milk}

    it 'costs $1.25' do 
      expect(coffee.price).to eq(1.25)
    end 
  end 
end

# You can add f to the begining of RSpec methods
# To set the 'focus' on those methods this will tag 
# fcontext, fit, fdescribe


# When you run your specs you will see a .
# for every completed example and a big ole 
# F for every failed example
#
# RSpec has different formatters if you need more 
# detail in your test report or need to output it
# somewhere specific like to a file or network
#
# RSpec Documentation Formatter lists the specs'
# output in an outline format using indentation
# to show grouping this way if you write good
# descriptions the output should read like 
# project documentations just use --format documentation
# after you enter RSpec in the console
# Short hand version 'rspec -fd'
#
# To Run a SPECIFIC --example or -e plus search term
# EX: rspec -e milk -fd
# the search words are case sensitive
#
# When you want to run a failed example
# rspec and the file:followed_by_line#
# You can copy and pasted this at the end of rspec output
# Where it says failed examples. 
