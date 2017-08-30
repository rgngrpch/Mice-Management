class Production < ActiveRecord::Base
	belongs_to :user
	belongs_to :cage
	has_one :notification
end
