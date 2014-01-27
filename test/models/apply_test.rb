require 'test_helper'

class ApplyTest < ActiveSupport::TestCase
	fixtures :applies
  # test "the truth" do
  #   assert true
  # end
  def new_phonestatus(phoneApplyStatus)
  	Apply.new(
  		applyNumber: 292,
  		nameOrFIO: "Айдол Уильям",
  		street: "ул.Ленина", 
			house: 88,
			phoneApplyStatus: phoneApplyStatus,
			applyTreatedBy: "Омен Екатерина Продиджевна",
			phoneContractConcludedBy: "Омен Екатерина Продиджевна",
			internetContractConcludedBy: "Омен Екатерина Продиджевна",
			iptvContractConcludedBy: "Омен Екатерина Продиджевна",
			clientType: "Юр лицо", 
			insertionDate: "2013-01-24")
  end

  def new_netstatus(internetApplyStatus)
  	Apply.new(
  		applyNumber: 292,
  		nameOrFIO: "Айдол Уильям",
  		street: "ул.Ленина", 
			house: 88,
			internetApplyStatus: internetApplyStatus,
			applyTreatedBy: "Омен Екатерина Продиджевна",
			phoneContractConcludedBy: "Омен Екатерина Продиджевна",
			internetContractConcludedBy: "Омен Екатерина Продиджевна",
			iptvContractConcludedBy: "Омен Екатерина Продиджевна",
			clientType: "Юр лицо", 
			insertionDate: "2013-01-24")
  end

  def new_iptvstatus(iptvApplyStatus)
  	Apply.new(
  		applyNumber: 292,
  		nameOrFIO: "Айдол Уильям",
  		street: "ул.Ленина", 
			house: 88,
			iptvApplyStatus: iptvApplyStatus,
			applyTreatedBy: "Омен Екатерина Продиджевна",
			phoneContractConcludedBy: "Омен Екатерина Продиджевна",
			internetContractConcludedBy: "Омен Екатерина Продиджевна",
			iptvContractConcludedBy: "Омен Екатерина Продиджевна",
			clientType: "Юр лицо", 
			insertionDate: "2013-01-24")
  end

  def new_clienttype(clientType)
  	Apply.new(
  		applyNumber: 292,
  		nameOrFIO: "Айдол Уильям",
  		street: "ул.Ленина", 
			house: 88,
			applyTreatedBy: "Омен Екатерина Продиджевна",
			phoneContractConcludedBy: "Омен Екатерина Продиджевна",
			internetContractConcludedBy: "Омен Екатерина Продиджевна",
			iptvContractConcludedBy: "Омен Екатерина Продиджевна",
			clientType: clientType, 
			insertionDate: "2013-01-24")
  end

  test "checking phone apply status to be right" do
  	bad = ["инсотолляция", "Атказ", "Взятка"]
  	bad.each do |name|
  		assert new_phonestatus(name).invalid?, "#{name} shouldn't be valid"
  	end
  	right = ["Установка", "Проверка", "В работе", "Отказ", "Отложено", "Очередь"]
  	right.each do |name|
  		assert new_phonestatus(name).valid?, "#{name} should be valid"
  	end
  end

  test "checking internet apply status to be right" do
  	bad = ["инсотолляция", "Атказ", "Взятка"]
  	bad.each do |name|
  		assert new_netstatus(name).invalid?, "#{name} shouldn't be valid"
  	end
  	right = ["Установка", "Проверка", "В работе", "Отказ", "Отложено", "Очередь"]
  	right.each do |name|
  		assert new_netstatus(name).valid?, "#{name} should be valid"
  	end
  end

  test "checking iptv apply status to be right" do
  	bad = ["инсотолляция", "Атказ", "Взятка"]
  	bad.each do |name|
  		assert new_iptvstatus(name).invalid?, "#{name} shouldn't be valid"
  	end
  	right = ["Установка", "Проверка", "В работе", "Отказ", "Отложено", "Очередь"]
  	right.each do |name|
  		assert new_iptvstatus(name).valid?, "#{name} should be valid"
  	end
  end

  test "checking client type to be right" do
  	bad = ["юрлицо", "Физ. Лицо", "нежилое помещение в физлице"]
  	bad.each do |name|
  		assert new_clienttype(name).invalid?, "#{name} shouldn't be valid"
  	end
  	right = ["Юр лицо", "Физ лицо", "Физ лицо в нежилом помещении"]
  	right.each do |name|
  		assert new_clienttype(name).valid?, "#{name} should be valid"
  	end
  end

  test "checking unique apply number" do
  	apply = Apply.new(
  		applyNumber: applies(:another_apply).applyNumber,
  		nameOrFIO: "Айдол Уильям",
  		street: "ул.Ленина", 
			house: 88,
			applyTreatedBy: "Омен Екатерина Продиджевна",
			phoneContractConcludedBy: "Омен Екатерина Продиджевна",
			internetContractConcludedBy: "Омен Екатерина Продиджевна",
			iptvContractConcludedBy: "Омен Екатерина Продиджевна",
			clientType: "Юр лицо", 
			insertionDate: "2013-01-24")
  	assert apply.invalid?
  end
end
