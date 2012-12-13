require 'spec_helper'

describe "zone_entries/show" do
  before(:each) do
    @zone_entry = assign(:zone_entry, stub_model(ZoneEntry,
      :zone => 1,
      :duration => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/9.99/)
  end
end
