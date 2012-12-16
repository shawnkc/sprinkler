class ChartsController < ApplicationController
  def moisture

    @title="Moisture voltage levels"

    @moistureValues = Array.new()
    Moisture.find_each do |x|
      a = Array.new()
      a.push(x[:created_at].to_time)
      a.push(x[:value].to_f)
      @moistureValues.push(a)
    end

  end

  def zone
  end

  def zones
  end

  def all
    @title="Sprinkler system"

    @moistureValues = Array.new()
    Moisture.find_each do |x|
      a = Array.new()
      a.push(x[:created_at].to_time)
      a.push(x[:value].to_f)
      @moistureValues.push(a)
    end

    @zoneArray = ZoneEntry.where(:zone => 1)

    i = 0
    @onValues = Array.new()
    ZoneEntry.find_each do |x|
      i = i + 1
      a = Array.new()
      a.push(x[:created_at].to_time)
      @onValues.push(a)
    end

    @zone1Values = Array.new()
    ZoneEntry.find_each do |x|
      a = Array.new()
      a.push(x[:created_at].to_time)
      a.push(x[:duration].to_f)
      @zone1Values.push(a)
    end
  end
end
