class Order < ActiveRecord::Base
	belongs_to :service
	belongs_to :order_type
	belongs_to :client_type
	
	#checks the obligatory presence of data in some columns
	validates :orderNumber, :service_id, :orderType_id, :nameOrFIO, 
		:street, :house, :responsiblePerson, :clientType_id, 
		:formingDate, presence: true
	#checks uniqueness of some columns
	validates :orderNumber, uniqueness: true
	#checks if incoming data equal string from array
	validates :service_id, inclusion: { in: 1..10 }
	validates :orderType_id, inclusion: { in: 1..18 }
	validates :clientType_id, inclusion: { in: 1..5 }
end
