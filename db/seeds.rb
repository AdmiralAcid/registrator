# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Apply.delete_all
Order.delete_all
Client.delete_all
ApplyStatus.delete_all
ClientType.delete_all
Service.delete_all
OrderType.delete_all

ApplyStatus.create!(
	status: "Установка")

ApplyStatus.create!(
	status: "Проверка")

ApplyStatus.create!(
	status: "В работе")

ApplyStatus.create!(
	status: "Отказ")

ApplyStatus.create!(
	status: "Отложено")

ApplyStatus.create!(
	status: "Очередь")

ClientType.create!(
	client: "Юр лицо")

ClientType.create!(
	client: "Физ лицо")

ClientType.create!(
	client: "Физ лицо в нежилом помещении")

ClientType.create!(
	client: "Корпоративный")

ClientType.create!(
	client: "Другой")

Service.create!(
	service: "IPTV")

Service.create!(
	service: "Интернет")

Service.create!(
	service: "Интернет/IPTV")

Service.create!(
	service: "Канал")

Service.create!(
	service: "Роутер")

Service.create!(
	service: "Тел/Инт")

Service.create!(
	service: "Тел/Инт/IPTV")

Service.create!(
	service: "Телефон")

Service.create!(
	service: "Телефон/IPTV")

Service.create!(
	service: "Эфирное ТВ")

OrderType.create!(
	order: "Демонтаж")

OrderType.create!(
	order: "Замена номера")

OrderType.create!(
	order: "Изменение параметров")

OrderType.create!(
	order: "Перенос")

OrderType.create!(
	order: "Перенос розетки")

OrderType.create!(
	order: "Проверка")

OrderType.create!(
	order: "Проверка переноса")

OrderType.create!(
	order: "Проверка смены технологии")

OrderType.create!(
	order: "Прокладка кабеля")

OrderType.create!(
	order: "Резервирование")

OrderType.create!(
	order: "Сигнализация")

OrderType.create!(
	order: "Смена тарифа")

OrderType.create!(
	order: "Смена технологии")

OrderType.create!(
	order: "Снятие")

OrderType.create!(
	order: "Снятие доп.линии")

OrderType.create!(
	order: "Снятие порта с резерва")

OrderType.create!(
	order: "Установка")

OrderType.create!(
	order: "Установка розетки")

Apply.create!(
	applyNumber: 29116, 
	phoneApplyDate: "2012-12-28", 
	internetApplyDate: "2012-12-28", 
	iptvApplyDate: "2012-12-28", 
	nameOrFIO: "Петров Петр Петрович", 
	street: "ул.Волочаевская", 
	house: 8, 
	building: "А", 
	apartmentOrOffice: "164", 
	floor: "3", 
	entrance: "1", 
	phoneApplyStatus: 1, 
	internetApplyStatus: 1, 
	iptvApplyStatus: 1, 
	applyTreatedBy: "Петрова Петра Петровна", 
	plannedPhoneInstallDate: "2012-12-30", 
	plannedInternetInstallDate: "2012-12-30", 
	phoneComments: "установить любой ценой", 
	internetComments: "установить за любую цену", 
	phoneContractNumber: 888634, 
	phoneContractDate: "2012-12-28", 
	phonePorts: "7", 
	phoneContractConcludedBy: "Петрова Петра Петровна", 
	phonePaymentDate: "2012-12-28", 
	phoneDocsPassDate: "2012-12-31", 
	phoneInstallDate: "2013-01-12", 
	internetContractNumber: 886633, 
	internetContractDate: "2012-12-28", 
	internetPorts: "13", 
	internetContractConcludedBy: "Петрова Петра Петровна", 
	internetPaymentDate: "2012-12-28", 
	internetDocsPassDate: "2012-12-31", 
	internetInstallDate: "2013-01-12", 
	iptvContractNumber: 888633, 
	iptvContractDate: "2012-12-28", 
	iptvPorts: "3", 
	iptvContractConcludedBy: "Петрова Петра Петровна", 
	iptvPaymentDate: "2012-12-28", 
	iptvInstallDate: "2013-01-12", 
	setToBox: "true", 
	clientType_id: 2, 
	insertionDate: "2013-01-24"
	)

Apply.create!(
	applyNumber: 29188, 
	phoneApplyDate: "2013-02-15", 
	internetApplyDate: "2013-02-15", 
	iptvApplyDate: "2013-02-15", 
	nameOrFIO: "Айдол Уильям", 
	street: "ул.Ленина", 
	house: 88, 
	#building: "А", 
	apartmentOrOffice: "2", 
	floor: "16", 
	#entrance: 1, 
	phoneApplyStatus: 2, 
	internetApplyStatus: 3, 
	iptvApplyStatus: 1, 
	applyTreatedBy: "Омен Екатерина Продиджевна", 
	plannedPhoneInstallDate: "2013-02-17", 
	plannedInternetInstallDate: "2013-02-17", 
	phoneComments: "надо сделать круто", 
	internetComments: "нууу прооооостооооооо оооооочень длиннннннаааааааая запиииииись", 
	phoneContractNumber: 8634, 
	phoneContractDate: "2013-02-15", 
	#phonePorts: 7, 
	phoneContractConcludedBy: "Омен Екатерина Продиджевна", 
	phonePaymentDate: "2013-02-15", 
	phoneDocsPassDate: "2013-02-18", 
	phoneInstallDate: "2014-01-12", 
	internetContractNumber: 633, 
	internetContractDate: "2012-12-28", 
	internetPorts: "100", 
	internetContractConcludedBy: "Омен Екатерина Продиджевна", 
	internetPaymentDate: "2012-12-28", 
	internetDocsPassDate: "2012-12-31", 
	internetInstallDate: "2013-01-12", 
	iptvContractNumber: 888633, 
	#iptvContractDate: "2012-12-28", 
	iptvPorts: "3", 
	iptvContractConcludedBy: "Омен Екатерина Продиджевна", 
	iptvPaymentDate: "2012-12-28", 
	iptvInstallDate: "2013-01-12", 
	#setToBox: "true", 
	clientType_id: 1, 
	insertionDate: "2013-01-24"
	)

Apply.create!(
	applyNumber: 11876, 
	phoneApplyDate: "2014-06-08", 
	internetApplyDate: "2014-06-08", 
	iptvApplyDate: "2014-06-08", 
	nameOrFIO: "Джимми Поп", 
	street: "пер.Вуки", 
	house: 16, 
	building: "Б", 
	apartmentOrOffice: "16", 
	floor: "12", 
	#entrance: 1, 
	phoneApplyStatus: 1, 
	internetApplyStatus: 1, 
	iptvApplyStatus: 4, 
	applyTreatedBy: "Андромедова Персея Орионовна", 
	#plannedPhoneInstallDate: "2012-12-30", 
	plannedInternetInstallDate: "2014-06-18", 
	#phoneComments: "установить любой ценой", 
	internetComments: "телефон абонента %^&", 
	phoneContractNumber: 8834, 
	phoneContractDate: "2014-06-18", 
	phonePorts: "7", 
	phoneContractConcludedBy: "Андромедова Персея Орионовна", 
	phonePaymentDate: "2014-06-18", 
	phoneDocsPassDate: "2014-06-20", 
	phoneInstallDate: "2014-06-18", 
	internetContractNumber: 88633, 
	internetContractDate: "2014-06-18", 
	internetPorts: "13", 
	internetContractConcludedBy: "Андромедова Персея Орионовна", 
	internetPaymentDate: "2014-06-18", 
	#internetDocsPassDate: "2012-12-31", 
	internetInstallDate: "2014-06-18", 
	iptvContractNumber: 83, 
	iptvContractDate: "2014-06-28", 
	iptvPorts: "300", 
	iptvContractConcludedBy: "Андромедова Персея Орионовна", 
	#iptvPaymentDate: "2012-12-28", 
	#iptvInstallDate: "2013-01-12", 
	setToBox: "true", 
	clientType_id: 3, 
	insertionDate: "2013-01-24"
	)

Order.create!(
	orderNumber: 18234,
	utuSendingDate: "2013-07-08",
	uasDate: "2013-08-07",
	performDate: "2013-09-01",
	performer: "Огородник Макар Матрасыч",
	applyNumber: 11876,
	contractNumber: 8834,
	service_id: 4,
	orderType_id: 3,
	cost: 4456.80,
	portsNumber: "1+1",
	phoneNumber: "+791441967345 рабочий",
	nameOrFIO: "ООО Сизифов труд",
	street: "ул. Имперская",
	house: 13,
	building: "ТНХ-1318",
	apartmentOrOffice: 24,
	floor: 2,
	entrance: 1,
	responsiblePerson: "Ответственный Игорь Семенович",
	comments: "нет, вы видали? вот это фамилия у него!",
	contactData: "дом.тел. Ответственного: 14-15-26",
	clientType_id: 1,
	formingDate: "2013-11-11",
	aoReturningDate: "2014-01-16"
	)

Order.create!(
	orderNumber: 18235,
	utuSendingDate: "2013-07-08",
	#uasDate: "2013-08-07",
	performDate: "2013-09-04",
	performer: "Джа Джа Бинкс",
	applyNumber: 29188,
	contractNumber: 88,
	service_id: 6,
	orderType_id: 11,
	cost: 1456.0,
	portsNumber: "5+1",
	phoneNumber: "+79144678345;+79142323236",
	nameOrFIO: "Нибелунг Зигфрид Беовульфыч",
	street: "бул. Асгард",
	house: 100,
	building: "Азъ",
	apartmentOrOffice: 100,
	floor: 200,
	#entrance: 1,
	responsiblePerson: "Витя Кабан",
	comments: "Как кабель в страну асов потянем?",
	contactData: "пейджер Кабана: 14-15-09",
	clientType_id: 1,
	formingDate: "2013-11-13",
	aoReturningDate: "2014-01-16"
	)

Order.create!(
	orderNumber: 134,
	utuSendingDate: "2013-07-08",
	uasDate: "2013-08-01",
	#performDate: "2013-09-01",
	performer: "Санек",
	applyNumber: 1187,
	contractNumber: 1488,
	service_id: 7,
	orderType_id: 9,
	#cost: 4456.80,
	portsNumber: "11",
	phoneNumber: "-",
	nameOrFIO: "ОАО Алебастрнефтьстройлесмаштех",
	street: "ул. Металлистов",
	house: 13,
	#building: "ТНХ-1318",
	apartmentOrOffice: 24,
	#floor: 2,
	#entrance: 1,
	responsiblePerson: "Витек",
	comments: "дочерняя компания Нефтьгазстройречверфькрайсервиса",
	contactData: "факс: 14-15-76",
	clientType_id: 2,
	formingDate: "2013-11-16",
	aoReturningDate: "2014-01-26"
	)

Client.create!(
	nameOrFIO: "Иванов Иван Иванович",
	clientType_id: 2,
	phoneContractNumber: 12345,
	internetContractNumber: 6789,
	phoneNumber: "+79141234567",
	faxNumber: "11111",
	email: "ivanov@ivan.ru",
	representPosition: "Директор",
	representFIO: "Александров Александр Александрович",
	contactPerson: "Федя",
	inn: "124667",
	kpp: "848434434",
	ogrn: "8949483",
	okpo: "098765",
	okonkh: "65758494",
	okwed: "34.65.12.",
	passportData: "выдан неизвестно где и непонятно при каких обстоятельствах",
	legalAddress: "тридевятое царство, дом 20",
	postAddress: "седьмое королевство 670012",
	connectionPointAddress: "Москва, ул. Академика Королева",
	bankName: "Сбербанк",
	bankBIK: "029394847",
	bankCorrAccount: "8475766",
	currentAccount: "23445667",
	additionalInfo: "nothing to add",
	placeOfBirth: "г. Хабаровск",
	dateOfBirth: "1965-01-10",
	persCabPhoneLogin: "vanya65",
	persCabPhonePasswd: "qwerty12345",
	persCabInternetLogin: "vanio1965",
	persCabInternetPasswd: "vanIvan11",
	benefitDocument: "Удостоверение ветерана труда",
	phoneContractDate: "2013-10-14",
	internetContractDate: "2013-10-14",
	contractAcceptor: "Васильев Василий Васильевич"
	)

Client.create!(
	nameOrFIO: "Айдол Уильям",
	clientType_id: 5,
	phoneContractNumber: 8634,
	internetContractNumber: 886633,
	phoneNumber: "+79141234567",
	#faxNumber: "11111",
	email: "billyidol@bk.ru",
	#representPosition: "Директор",
	#representFIO: "Александров Александр Александрович",
	#contactPerson: "Федя",
	inn: "124667",
	#kpp: "848434434",
	#ogrn: "8949483",
	#okpo: "098765",
	okonkh: "65758494",
	#okwed: "34.65.12.",
	passportData: "подделка",
	legalAddress: "Ул. Большевизма, дом 28",
	postAddress: "Ул. Большевизма, дом 28",
	connectionPointAddress: "Ул. Большевизма, дом 28",
	bankName: "Альфа-Банк",
	bankBIK: "43545747",
	bankCorrAccount: "8475766",
	currentAccount: "23445667",
	#additionalInfo: "nothing to add",
	placeOfBirth: "г. Хабаровск",
	dateOfBirth: "1957-03-10",
	persCabPhoneLogin: "idol611114",
	persCabPhonePasswd: "qwerty12345",
	persCabInternetLogin: "rockmachine",
	persCabInternetPasswd: "idolllll957",
	#benefitDocument: "Удостоверение ветерана труда",
	phoneContractDate: "2013-10-14",
	internetContractDate: "2013-10-14",
	contractAcceptor: "Васильев Василий Васильевич"
	)

Client.create!(
	nameOrFIO: "ООО Мурка",
	clientType_id: 4,
	phoneContractNumber: 4345,
	internetContractNumber: 7789,
	phoneNumber: "+79141234567; 34-34-56",
	faxNumber: "MEOW-114-3435",
	email: "kittyboss@murka.ru",
	representPosition: "Ген. Директор",
	representFIO: "Пушок Невский-Маскарадный",
	#contactPerson: "",
	inn: "124667",
	kpp: "848434434",
	ogrn: "8949483",
	okpo: "098765",
	okonkh: "65758494",
	okwed: "34.65.12.",
	passportData: "0806 144567 Выдан ОУФМС Краснофлотского Района...",
	legalAddress: "ул. Седьмая",
	postAddress: "ул. Седьмая",
	connectionPointAddress: "ул. Седьмая",
	bankName: "Сбербанк",
	bankBIK: "029394847",
	bankCorrAccount: "8475766",
	currentAccount: "23445667",
	#additionalInfo: "nothing to add",
	placeOfBirth: "г. Хабаровск",
	dateOfBirth: "2009-07-30",
	persCabPhoneLogin: "pussdarkstalker",
	persCabPhonePasswd: "inb00t5",
	persCabInternetLogin: "catmasta",
	persCabInternetPasswd: "qwertyuio9876",
	#benefitDocument: "Удостоверение ветерана труда",
	phoneContractDate: "2013-10-14",
	internetContractDate: "2013-10-14",
	contractAcceptor: "Васильев Василий Васильевич"
	)