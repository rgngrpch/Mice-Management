# == Schema Information
#
# Table name: mice
#
#  id                 :integer          not null, primary key
#  tag_number         :integer
#  genome             :string
#  parent_information :integer
#  sex                :string
#  age                :integer
#  date_of_birth      :date
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  user_id            :integer
#  cage_id            :integer
#  transfer_id        :integer
#

class Mouse < ActiveRecord::Base
	belongs_to :user
	belongs_to :cage
	has_one :transfer
end
