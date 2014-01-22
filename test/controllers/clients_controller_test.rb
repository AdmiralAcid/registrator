require 'test_helper'

class ClientsControllerTest < ActionController::TestCase
  setup do
    @client = clients(:one)
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
      post :create, client: { additionalInfo: @client.additionalInfo, bankBIK: @client.bankBIK, bankCorrAccount: @client.bankCorrAccount, bankName: @client.bankName, benefitDocument: @client.benefitDocument, connectionPointAddress: @client.connectionPointAddress, contactPerson: @client.contactPerson, contractAcceptor: @client.contractAcceptor, currentAccount: @client.currentAccount, dateOfBirth: @client.dateOfBirth, email: @client.email, faxNumber: @client.faxNumber, inn: @client.inn, internetContracNumber: @client.internetContracNumber, internetContractDate: @client.internetContractDate, kpp: @client.kpp, legalAddress: @client.legalAddress, nameOrFIO: @client.nameOrFIO, ogrn: @client.ogrn, okonkh: @client.okonkh, okpo: @client.okpo, okwed: @client.okwed, passportData: @client.passportData, persCabInternetLogin: @client.persCabInternetLogin, persCabInternetPasswd: @client.persCabInternetPasswd, persCabPhoneLogin: @client.persCabPhoneLogin, persCabPhonePasswd: @client.persCabPhonePasswd, personType: @client.personType, phoneContractDate: @client.phoneContractDate, phoneContractNumber: @client.phoneContractNumber, phoneNumber: @client.phoneNumber, placeOfBirth: @client.placeOfBirth, postAddress: @client.postAddress, representFIO: @client.representFIO, representPosition: @client.representPosition }
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
    patch :update, id: @client, client: { additionalInfo: @client.additionalInfo, bankBIK: @client.bankBIK, bankCorrAccount: @client.bankCorrAccount, bankName: @client.bankName, benefitDocument: @client.benefitDocument, connectionPointAddress: @client.connectionPointAddress, contactPerson: @client.contactPerson, contractAcceptor: @client.contractAcceptor, currentAccount: @client.currentAccount, dateOfBirth: @client.dateOfBirth, email: @client.email, faxNumber: @client.faxNumber, inn: @client.inn, internetContracNumber: @client.internetContracNumber, internetContractDate: @client.internetContractDate, kpp: @client.kpp, legalAddress: @client.legalAddress, nameOrFIO: @client.nameOrFIO, ogrn: @client.ogrn, okonkh: @client.okonkh, okpo: @client.okpo, okwed: @client.okwed, passportData: @client.passportData, persCabInternetLogin: @client.persCabInternetLogin, persCabInternetPasswd: @client.persCabInternetPasswd, persCabPhoneLogin: @client.persCabPhoneLogin, persCabPhonePasswd: @client.persCabPhonePasswd, personType: @client.personType, phoneContractDate: @client.phoneContractDate, phoneContractNumber: @client.phoneContractNumber, phoneNumber: @client.phoneNumber, placeOfBirth: @client.placeOfBirth, postAddress: @client.postAddress, representFIO: @client.representFIO, representPosition: @client.representPosition }
    assert_redirected_to client_path(assigns(:client))
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete :destroy, id: @client
    end

    assert_redirected_to clients_path
  end
end
