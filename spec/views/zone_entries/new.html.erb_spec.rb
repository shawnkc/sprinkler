require 'spec_helper'

describe "zone_entries/new" do
  before(:each) do
    assign(:zone_entry, stub_model(ZoneEntry,
      :zone => 1,
      :duration => "9.99"
    ).as_new_record)
  end

  it "renders new zone_entry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => zone_entries_path, :method => "post" do
      assert_select "input#zone_entry_zone", :name => "zone_entry[zone]"
      assert_select "input#zone_entry_duration", :name => "zone_entry[duration]"
    end
  end
end
