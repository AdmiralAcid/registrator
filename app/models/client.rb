class Client < ActiveRecord::Base
	#checks the obligatory presence of data in some columns
	validates :nameOrFIO, :personType, :contractAcceptor, presence: true
	#checks uniqueness of some columns
	validates :nameOrFIO, uniqueness: true
	#checks if incoming data equal string from array
	validates :personType, inclusion: ["Юр лицо", "Физ лицо", "Корп", "Другой"]
end
