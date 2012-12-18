# == Schema Information
#
# Table name: moistures
#
#  id         :integer          not null, primary key
#  value      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Moisture < ActiveRecord::Base
  attr_accessible :value, :moisture
  
end
