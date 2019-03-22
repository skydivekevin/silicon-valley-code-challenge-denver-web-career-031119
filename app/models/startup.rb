class Startup

  @@all = []
  attr_accessor :startup_name, :founder, :domain

  def self.all
    @@all
  end

  def initialize(startup_name, founder, domain)
    @startup_name = startup_name
    @founder = founder
    @domain = domain
    @@all << self
  end
###########################################
  def self.select_by_shit(input, input_type)
    @@all.select{ |startup| startup.send(input_type) == input}
  end

  # def self.display_string(input, input_type)
  #   self.select_by_shit(input, input_type).map(&:input)
  # end
#######################################

  def self.select_by_startup_name(startup_name_input)
    @@all.select{|startup| startup.startup_name == startup_name_input}
  end

  def self.startup_string(startup_name_input)
    self.select_by_startup_name(startup_name_input).map(&:startup_name).last
  end

  def self.select_by_founder(founder_name_input)
    @@all.select{|startup| startup.founder == founder_name_input}
  end

  def self.founder_string(founder_name_input)
    self.select_by_founder(founder_name_input).map(&:founder).last
  end


  # def self.select_by_founders_name(name)
  #   @@all.select{|startup| startup.founder == name}
  # end

  # def self.founder(founder_input)
  #   self.select_by_founders_name(founder_input).map(&:founder)
  # end

end
# #### Build the following methods on the `Startup` class

# - `Startup#name`
#   - returns a **string** that is the startup's name
# - `Startup#founder`
#   - returns a **string** that is the founder's name
#   - Once a startup is created, the founder cannot be changed.
# - `Startup#domain`
#   - returns a **string** that is the startup's domain
#   - Once a startup is created, the domain cannot be changed.
# - `Startup#pivot`
#   - given a string of a **domain** and a string of a **name**, change the domain and name of the startup
# - `Startup.all`
#   - should return **all** of the startup instances
# - `Startup.find_by_founder`
#   - given a string of a **founder's name**, returns the **first startup** whose founder's name matches
# - `Startup.domains`
#   - should return an **array** of all of the different startup domains