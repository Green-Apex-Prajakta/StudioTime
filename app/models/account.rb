class Account < ApplicationRecord
	belongs_to :user
	belongs_to :contact
	belongs_to :password
end
