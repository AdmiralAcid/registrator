class ClientType < ActiveRecord::Base
	has_many :applies
	has_many :clients
	has_many :orders
end
