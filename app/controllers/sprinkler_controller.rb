# this is the one I want to start working with

class SprinklerController < ApplicationController

  # called when the sprinkler zone is turned on
  # parms: duration, zone, moisture level
  def start
    # just logs the moisture value for now, 
    # time information is logged in stop
  end

  def stop
  end

  # for stand alone moisture data updates
  def moisture
    if (params.has_key?(:value))  
      @moistureEntry = Moisture.new(:value => params[:value])
      #@moistureEntry.save

      @moistures = Moisture.all

      @test = Array.new()
      @values = Array.new()
      @x = Array.new()
      @moistures.each do |x|
        @values.push(x[:value].to_f)
        @x.push(x[:created_at])
        a = Array.new()
        a.push(x[:created_at].to_time)
#        a.push(x[:value].to_f)
        a.push(x[:value].to_f)
        @test.push(a)
      end

      @h = LazyHighCharts::HighChart.new('graph') do |f|
        #f.title(:text=>'tmp')
        f.options[:chart][:defaultSeriesType] = "line"
        f.series(:name=>'voltage', :data=>@values)
        #f.series(:name=>'John', :data=>[3, 20, 3, 5, 4, 10, 12 ,3, 5,6,7,7,80,9,9])
        #f.series(:name=>'Jane', :data=> [1, 3, 4, 3, 3, 5, 4,-46,7,8,8,9,9,0,0,9] )
#        f.xAxis(:title=>'Time')
        #f.xAxis(:type=>'datetime', :labels=>@x)
      end

    end
  end

end