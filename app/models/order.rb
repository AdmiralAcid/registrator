class Order < ActiveRecord::Base
	#checks the obligatory presence of data in some columns
	validates :orderNumber, :service, :orderType, :nameOrFIO, 
		:street, :house, :responsiblePerson, :personType, 
		:formingDate, presence: true
	#checks uniqueness of some columns
	validates :orderNumber, uniqueness: true
	#checks if incoming data equal string from array
	validates :service, allow_blank: true, inclusion: ["IPTV", "Интернет", "Интернет/IPTV", "Канал", "Роутер", "Тел/Инт", "Тел/Инт/IPTV", "Телефон", "Телефон/IPTV", "Эфирное ТВ"]
	validates :orderType, allow_blank: true, inclusion: ["демонтаж", "замена номера", "изменение параметров", "перенос", "перенос розетки", "проверка", "проверка переноса", "проверка смены технологии", "прокладка кабеля", "резервирования", "сигнализация", "смена тарифа", "смена технологии", "снятие", "снятие доп.линии", "снятие порта с резерва", "установка", "установка розетки"]
	validates :personType, inclusion: ["Корпоративный", "Физ лицо", "Физ лицо в нежилом помещении", "Юр лицо"]
end
