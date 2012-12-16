# this is the one I want to start working with

class SprinklerController < ApplicationController

  # called when the sprinkler zone is turned on
  def start
    # just logs the moisture value for now, 
    # time information is logged in stop
    if (params.has_key?(:moisture))  
      @moistureEntry = Moisture.new(:value => params[:moisture])
      @moistureEntry.save
    end
  end

  # /stop?zone=6&duration=123&moisture=1.23
  def stop
    if (params.has_key?(:moisture))  
      @moistureEntry = Moisture.new(:value => params[:moisture])
      @moistureEntry.save
    end
    if (params.has_key?(:zone) && params.has_key?(:duration))  
      @zoneEntry = ZoneEntry.new(:zone => params[:zone], :duration => params[:duration])
      @zoneEntry.save
    end
  end

  # for stand alone moisture data updates
  def moisture
    if (params.has_key?(:moisture))  
      @moistureEntry = Moisture.new(:value => params[:moisture])
      @moistureEntry.save
    end
  end

end
