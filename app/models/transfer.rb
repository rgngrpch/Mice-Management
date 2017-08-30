# == Schema Information
#
# Table name: transfers
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  mouse_id   :integer
#  cage_id    :integer
#

class Transfer < ActiveRecord::Base
	belongs_to :mouse
	belongs_to :cage
	has_one :notification
end
