class User < ApplicationRecord
	has_one :profile
	has_one :account
	has_many :studios
end
