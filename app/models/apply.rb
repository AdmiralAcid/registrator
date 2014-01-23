class Apply < ActiveRecord::Base
	#checks the obligatory presence of data in some columns
	validates :applyNumber, :nameOrFIO, :street, :house, :applyTreatedBy,
	  :phoneContractConcludedBy, :internetContractConcludedBy, 
	  :iptvContractConcludedBy, :clientType, :insertionDate, presence: true
	 #checks uniqueness of some columns
	 validates :applyNumber, uniqueness: true
	 #checks if incoming data equal string from array
	 validates :phoneApplyStatus, allow_blank: true, inclusion: ["Установка", "Проверка", "В работе", "Отказ", "Отложено", "Очередь"]
	 validates :internetApplyStatus, allow_blank: true, inclusion: ["Установка", "Проверка", "В работе", "Отказ", "Отложено", "Очередь"]
	 validates :iptvApplyStatus, allow_blank: true, inclusion: ["Установка", "Проверка", "В работе", "Отказ", "Отложено", "Очередь"]
	 validates :clientType, inclusion: ["Юр лицо", "Физ лицо", "Физ лицо в нежилом помещении"]
end
