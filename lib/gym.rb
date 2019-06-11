class Gym
	#935 - 1018

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self 
  end

  def self.all
  	@@all
  end

  def my_memberships
  	Membership.all.select do |card|
  		card.gym == self
  	end
  end

  def my_lifters 
  	my_memberships.collect do |membership|
  		membership.lifter
  	end
  end


  def my_lifter_names
  	my_lifters.map do |lifter|
  		lifter.name
  	end
  end

  def total_lifted 		#combined lift total of every lifter has a membership to that gym
  	my_lifters.reduce(0) do |total, lifter|
  		total + lifter.lift_total
  	end
  end





end
