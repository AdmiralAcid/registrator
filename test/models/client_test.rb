require 'test_helper'

class ClientTest < ActiveSupport::TestCase
	fixtures :clients
  # test "the truth" do
  #   assert true
  # end
  def new_persontype(personType)
  	Client.new(
  		nameOrFIO: "Айдол Уильям",
			personType: personType,
			contractAcceptor: "Васильев Василий Васильевич")
  end

  test "checking person type to be right" do
  	bad = ["физлицо", "юрлецо", "юрец"]
  	bad.each do |name|
  		assert new_persontype(name).invalid?, "#{name} shouldn't be valid"
  	end
  	right = ["Юр лицо", "Физ лицо", "Корп", "Другой"]
  	right.each do |name|
  		assert new_persontype(name).valid?, "#{name} should be valid"
  	end
  end

  test "checking name or FIO to be right" do
  	client = Client.new(
  		nameOrFIO: clients(:another_client).nameOrFIO,
			personType: "Корп",
			contractAcceptor: "Васильев Василий Васильевич")
  	assert client.invalid?
  end
end
