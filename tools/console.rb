require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

VentureCapitalist.new("Mark Cuban", 1_000_000_000_000)
VentureCapitalist.new("Kevin Potts", 500)

Startup.new("Startup 1", "Founder 1", "Tech")
Startup.new("Startup 2", "Founder 2", "Business")
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line