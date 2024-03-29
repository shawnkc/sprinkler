# == Schema Information
#
# Table name: zone_entries
#
#  id         :integer          not null, primary key
#  zone       :integer
#  duration   :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ZoneEntry < ActiveRecord::Base
  attr_accessible :duration, :zone
end
