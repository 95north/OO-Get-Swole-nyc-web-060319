class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end


  def self.all
  	@@all
  end




  def my_memberships
  	Membership.all.select do |card|
  		card.lifter == self
  	end
  end

  def my_gyms 
  	my_memberships.select do |membership|
  		membership.gym
  	end
  end

  def self.avg_lift_total 		#average lift total of all lifters
  	all_lifts= Lifter.all.reduce(0) do |total, lift|
  		total + lift.lift_total
  	end
  	lifter_count = @@all.length
  	all_lifts / lifter_count
  end



  def my_memberships_cost # got $320, ie. all members all gyms!  Not just l1!
  	#	Membership.all.reduce(0) do |total, membership|
  	self.my_memberships.reduce(0) do |total, membership|
  		total + membership.cost
  	end
  end


#(cost, lifter, gym)
  def sign_up(gym, mcost)
  	Membership.new(mcost, self, gym)
  end 




end
