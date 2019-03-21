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

  def self.select_startup(name)
    @@all.select{|startup| startup.startup_name == name}
  end

  def self.name(name)
    self.select_startup(name).map{|startup| startup.startup_name}.to_s
  end


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