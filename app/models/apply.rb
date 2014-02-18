class Apply < ActiveRecord::Base
	belongs_to :apply_status, foreign_key: "phoneApplyStatus"
	belongs_to :apply_status, foreign_key: "internetApplyStatus"
	belongs_to :apply_status, foreign_key: "iptvApplyStatus"
	belongs_to :client_type

	#checks the obligatory presence of data in some columns
	validates :applyNumber, :nameOrFIO, :street, :house, :applyTreatedBy,
	  :phoneContractConcludedBy, :internetContractConcludedBy, 
	  :iptvContractConcludedBy, :clientType_id, :insertionDate, :phoneApplyStatus,
	  :internetApplyStatus, :iptvApplyStatus, presence: true
	 #checks uniqueness of some columns
	 validates :applyNumber, uniqueness: true
	 #checks if incoming data equal string from array
	 validates :phoneApplyStatus, inclusion: { in: 1..6 }
	 validates :internetApplyStatus, inclusion: { in: 1..6 }
	 validates :iptvApplyStatus, inclusion: { in: 1..6 }
	 validates :clientType_id, inclusion: { in: 1..5 }
end
