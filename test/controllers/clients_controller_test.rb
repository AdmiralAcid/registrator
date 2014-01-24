require 'test_helper'

class ClientsControllerTest < ActionController::TestCase
  setup do
    @client = clients(:one)
    @update = {
      nameOrFIO: "Каприо Леонардо Ди",
      personType: "Физ лицо",
      phoneContractNumber: 145,
      internetContractNumber: 789,
      phoneNumber: "+79141774577",
      #faxNumber: "11111",
      email: "leon68@mail.ru",
      representPosition: "Режиссер",
      #representFIO: "Джон Филиппс",
      contactPerson: "Джонни",
      inn: "124667",
      kpp: "844434434",
      ogrn: "866483",
      okpo: "0985",
      okonkh: "6558494",
      okwed: "37.55.12.",
      passportData: "US Citizenship",
      legalAddress: "Miami",
      postAddress: "Miami, Leo D residence",
      #connectionPointAddress: "Москва, ул. Академика Королева",
      bankName: "Сбербанк",
      bankBIK: "029366847",
      bankCorrAccount: "68475766",
      currentAccount: "27223667",
      #additionalInfo: "nothing to add",
      #placeOfBirth: "г. Хабаровск",
      dateOfBirth: "1968-01-10",
      persCabPhoneLogin: "leon68",
      persCabPhonePasswd: "qwerty12345d",
      persCabInternetLogin: "kapriod",
      persCabInternetPasswd: "osscar",
      #benefitDocument: "Удостоверение ветерана труда",
      phoneContractDate: "2013-10-14",
      internetContractDate: "2013-10-14",
      contractAcceptor: "Васильев Василий Васильевич"
    }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client" do
    assert_difference('Client.count') do
      post :create, client: @update
    end

    assert_redirected_to client_path(assigns(:client))
  end

  test "should show client" do
    get :show, id: @client
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @client
    assert_response :success
  end

  test "should update client" do
    patch :update, id: @client, client: @update
    assert_redirected_to client_path(assigns(:client))
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete :destroy, id: @client
    end

    assert_redirected_to clients_path
  end
end
