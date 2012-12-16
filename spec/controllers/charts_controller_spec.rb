require 'spec_helper'

describe ChartsController do

  describe "GET 'moisture'" do
    it "returns http success" do
      get 'moisture'
      response.should be_success
    end
  end

  describe "GET 'zone'" do
    it "returns http success" do
      get 'zone'
      response.should be_success
    end
  end

  describe "GET 'zones'" do
    it "returns http success" do
      get 'zones'
      response.should be_success
    end
  end

  describe "GET 'all'" do
    it "returns http success" do
      get 'all'
      response.should be_success
    end
  end

end
