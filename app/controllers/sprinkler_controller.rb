# this is the one I want to start working with

class SprinklerController < ApplicationController

  def delete_all_rows
    #Moisture.delete_all
    #ZoneEntry.delete_all
    Moisture.delete_all(["value < ?", 1.0]) 
  end

  def truncateOldRows
    # Fetch your latest N records (to stay within 70% of 10k limit)
    days = 14;
    seconds = days * 24 * 60 * 60
    Moisture.delete_all(["created_at < ?", Time.now - seconds]) 
    ZoneEntry.delete_all(["created_at < ?", Time.now - seconds]) 
  end

  # called when the sprinkler zone is turned on
  def start
    # just logs the moisture value for now, 
    # time information is logged in stop
    truncateOldRows()
    if (params.has_key?(:moisture))  
      @moistureEntry = Moisture.new(:value => params[:moisture])
      @moistureEntry.save
    end
  end

  # /stop?zone=6&duration=123&moisture=1.23
  def stop
    truncateOldRows()
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
    truncateOldRows()
    if (params.has_key?(:moisture))  
      @moistureEntry = Moisture.new(:value => params[:moisture])
      @moistureEntry.save
    end
  end

end
