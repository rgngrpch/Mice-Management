class Cage < ActiveRecord::Base

# validates :cage_name, presence: true

	belongs_to :user
	has_many :mice
	has_one :transfer
	has_one :production
end
