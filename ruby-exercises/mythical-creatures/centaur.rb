class Centaur

  attr_reader :name, :breed

  def initialize(name, breed)
    @name = name
    @breed = breed
    @tired = 0
    @standing = true
  end

  def shoot
    if cranky? || laying?
      "NO!"
    else
      @tired += 1
      "Twang!!!"
    end

  end

  def run
    if cranky? || laying?
      "NO!"
    else
      @tired += 1
      "Clop clop clop clop!!!"
    end

  end

  def cranky?
    if @tired > 2
      true
    else
      false
    end

  end

  def standing?
    @standing == true
  end

  def sleep
    if standing?
      "NO!"
    else
      @tired = 0
    end

  end

  def lay_down
    @standing = false
  end

  def laying?
    @standing == false
  end

  def stand_up
    @standing = true
  end
end
