require 'spec_helper'

describe SprinklerController do

  describe "GET 'start'" do
    it "returns http success" do
      get 'start'
      response.should be_success
    end
  end

  describe "GET 'stop'" do
    it "returns http success" do
      get 'stop'
      response.should be_success
    end
  end

  describe "GET 'moisture'" do
    it "returns http success" do
      get 'moisture'
      response.should be_success
    end
  end

  describe "GET 'status'" do
    it "returns http success" do
      get 'status'
      response.should be_success
    end
  end

  describe "GET 'moisture_threshold'" do
    it "returns http success" do
      get 'moisture_threshold'
      response.should be_success
    end
  end

  describe "GET 'zone_data'" do
    it "returns http success" do
      get 'zone_data'
      response.should be_success
    end
  end

end
