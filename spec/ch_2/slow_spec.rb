# to find the tests that take up the most time
# you can run a --profile option along with a number
# of the top offenders 'rspec --profile 2'
# would list the top 2 slowest running specs

RSpec.describe 'The sleep() method' do 
  it ('can sleep for 0.1 second') { sleep 0.1 } 
  it ('can sleep for 0.2 second') { sleep 0.2 }
  it ('can sleep for 0.3 second') { sleep 0.3 } 
  it ('can sleep for 0.4 second') { sleep 0.4 } 
  it ('can sleep for 0.5 second') { sleep 0.5 }
end 
