class Werewolf

  attr_reader :name, :location

  def initialize(name,location = "London")
    @name = name
    @location = location
    @human = true
  end

  def human?
    @human == true
  end

  def change!
    if @human == true
      @human = false
    else
      @human = true
    end

  end

  def werewolf?
    @human == false
  end



end
