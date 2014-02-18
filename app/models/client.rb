class Client < ActiveRecord::Base
	belongs_to :client_type
	#checks the obligatory presence of data in some columns
	validates :nameOrFIO, :contractAcceptor, :clientType_id, presence: true
	#checks uniqueness of some columns
	validates :nameOrFIO, uniqueness: true
	#checks if incoming data equal string from array
	validates :clientType_id, inclusion: { in: 1..5 }
end
