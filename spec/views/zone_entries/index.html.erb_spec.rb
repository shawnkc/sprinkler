require 'spec_helper'

describe "zone_entries/index" do
  before(:each) do
    assign(:zone_entries, [
      stub_model(ZoneEntry,
        :zone => 1,
        :duration => "9.99"
      ),
      stub_model(ZoneEntry,
        :zone => 1,
        :duration => "9.99"
      )
    ])
  end

  it "renders a list of zone_entries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
