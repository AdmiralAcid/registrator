require 'test_helper'

class OrderTest < ActiveSupport::TestCase
	fixtures :orders
  # test "the truth" do
  #   assert true
  # end
  def new_service(service)
  	Order.new(
  		orderNumber: 37592,
  		service: service,
			orderType: "установка розетки",
			nameOrFIO: "Нибелунг Зигфрид Беовульфыч",
			street: "бул. Амурский",
			house: 10,
			responsiblePerson: "Витя Кабан",
			personType: "Физ лицо",
			formingDate: "2013-11-13")
  end

  def new_ordertype(orderType)
  	Order.new(
  		orderNumber: 37592,
  		service: "IPTV",
			orderType: orderType,
			nameOrFIO: "Нибелунг Зигфрид Беовульфыч",
			street: "бул. Амурский",
			house: 10,
			responsiblePerson: "Витя Кабан",
			personType: "Физ лицо",
			formingDate: "2013-11-13")
  end

  def new_persontype(personType)
  	Order.new(
  		orderNumber: 37592,
  		service: "IPTV",
			orderType: "установка розетки",
			nameOrFIO: "Нибелунг Зигфрид Беовульфыч",
			street: "бул. Амурский",
			house: 10,
			responsiblePerson: "Витя Кабан",
			personType: personType,
			formingDate: "2013-11-13")
  end

  test "checking service to be right" do
  	service_wrong = ["ptvi", "инторнет", "роутыр"]
  	service_wrong.each do |name|
  		assert new_service(name).invalid?, "#{name} shouldn't be valid"
  	end 
  	service_right = ["IPTV", "Интернет", "Интернет/IPTV", "Канал", "Роутер", "Тел/Инт", "Тел/Инт/IPTV", "Телефон", "Телефон/IPTV", "Эфирное ТВ"]
  	service_right.each do |name|
  		assert new_service(name).valid?, "#{name} should be valid"
  	end
	end

	test "checking order type to be right" do
  	ordertype_wrong = ["димонташ", "изезение порамертов", "select * from orders;"]
  	ordertype_wrong.each do |name|
  		assert new_ordertype(name).invalid?, "#{name} shouldn't be valid"
  	end 
  	ordertype_right = ["демонтаж", "замена номера", "изменение параметров", "перенос", "перенос розетки", "проверка", "проверка переноса", "проверка смены технологии", "прокладка кабеля", "резервирования", "сигнализация", "смена тарифа", "смена технологии", "снятие", "снятие доп.линии", "снятие порта с резерва", "установка", "установка розетки"]
  	ordertype_right.each do |name|
  		assert new_ordertype(name).valid?, "#{name} should be valid"
  	end
	end

	test "checking person type to be right" do
  	persontype_wrong = ["коропротивный", "Физ. Лицо", "юрлицо"]
  	persontype_wrong.each do |name|
  		assert new_persontype(name).invalid?, "#{name} shouldn't be valid"
  	end 
  	persontype_right = ["Корпоративный", "Физ лицо", "Физ лицо в нежилом помещении", "Юр лицо"]
  	persontype_right.each do |name|
  		assert new_persontype(name).valid?, "#{name} should be valid"
  	end
	end

	test "checking unique order number" do
		order = Order.new(
			orderNumber: orders(:new_world_order).orderNumber,
  		service: "IPTV",
			orderType: "установка розетки",
			nameOrFIO: "Нибелунг Зигфрид Беовульфыч",
			street: "бул. Амурский",
			house: 10,
			responsiblePerson: "Витя Кабан",
			personType: "Физ лицо",
			formingDate: "2013-11-13")
		assert order.invalid?
	end
end
