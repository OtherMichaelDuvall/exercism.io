module BookKeeping
  VERSION = 2
end

module Robot_Functions
  @@Name_List ||= []

  def name_generation
    prefix = 2.times.map {[*'A'..'Z'].sample}.join
    suffix = 3.times.map {[*'0'..'9'].sample}.join

    name = prefix + suffix
    if @@Name_List.include?(name)
      name_generation
    else
      @@Name_List << name
      return name
    end
  end

  def reset_factory_name
    @robot_name = name_generation
  end
end

class Robot
  include Robot_Functions

  def initialize
    @robot_name
  end

  def name
    @robot_name ||= name_generation
  end

  def reset
    reset_factory_name
  end
end
