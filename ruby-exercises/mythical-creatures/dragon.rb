class Dragon

  attr_reader :name, :color, :rider
  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @hungry = true
    @food = 0
  end

  def hungry?
    @hungry == true
  end


  def eat
    @food += 1
    if @food > 2
      @hungry = false
    end
  end




end
