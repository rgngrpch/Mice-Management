class Notification < ActiveRecord::Base
	belongs_to :transfer
	belongs_to :production
end
