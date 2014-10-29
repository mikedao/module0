class Medusa

  attr_reader :statues

  def initialize(name)
    @statues = []
  end

  def name
    "Cassiopeia"
  end

  def stare(victim)
    victim.stoned = true
    statues << victim
  end

end

class Person
  attr_reader :name
  attr_accessor :stoned
  
  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    @stoned == true
  end


end
