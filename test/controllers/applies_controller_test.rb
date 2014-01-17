require 'test_helper'

class AppliesControllerTest < ActionController::TestCase
  setup do
    @apply = applies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:applies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apply" do
    assert_difference('Apply.count') do
      post :create, apply: { apartmentOrOffice: @apply.apartmentOrOffice, applyNumber: @apply.applyNumber, applyTreatedBy: @apply.applyTreatedBy, building: @apply.building, clientType: @apply.clientType, entrance: @apply.entrance, floor: @apply.floor, house: @apply.house, insertionDate: @apply.insertionDate, internetApplyDate: @apply.internetApplyDate, internetApplyStatus: @apply.internetApplyStatus, internetComments: @apply.internetComments, internetContractConcludedBy: @apply.internetContractConcludedBy, internetContractDate: @apply.internetContractDate, internetContractNumber: @apply.internetContractNumber, internetDocsPassDate: @apply.internetDocsPassDate, internetInstallDate: @apply.internetInstallDate, internetPaymentDate: @apply.internetPaymentDate, internetPorts: @apply.internetPorts, iptvApplyDate: @apply.iptvApplyDate, iptvApplyStatus: @apply.iptvApplyStatus, iptvContractConcludedBy: @apply.iptvContractConcludedBy, iptvContractDate: @apply.iptvContractDate, iptvContractNumber: @apply.iptvContractNumber, iptvInstallDate: @apply.iptvInstallDate, iptvPaymentDate: @apply.iptvPaymentDate, iptvPorts: @apply.iptvPorts, nameOrFIO: @apply.nameOrFIO, phoneApplyDate: @apply.phoneApplyDate, phoneApplyStatus: @apply.phoneApplyStatus, phoneComments: @apply.phoneComments, phoneContractConcludedBy: @apply.phoneContractConcludedBy, phoneContractDate: @apply.phoneContractDate, phoneContractNumber: @apply.phoneContractNumber, phoneDocsPassDate: @apply.phoneDocsPassDate, phoneInstallDate: @apply.phoneInstallDate, phonePaymentDate: @apply.phonePaymentDate, phonePorts: @apply.phonePorts, plannedInternetInstallDate: @apply.plannedInternetInstallDate, plannedPhoneInstallDate: @apply.plannedPhoneInstallDate, setToBox: @apply.setToBox, street: @apply.street }
    end

    assert_redirected_to apply_path(assigns(:apply))
  end

  test "should show apply" do
    get :show, id: @apply
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @apply
    assert_response :success
  end

  test "should update apply" do
    patch :update, id: @apply, apply: { apartmentOrOffice: @apply.apartmentOrOffice, applyNumber: @apply.applyNumber, applyTreatedBy: @apply.applyTreatedBy, building: @apply.building, clientType: @apply.clientType, entrance: @apply.entrance, floor: @apply.floor, house: @apply.house, insertionDate: @apply.insertionDate, internetApplyDate: @apply.internetApplyDate, internetApplyStatus: @apply.internetApplyStatus, internetComments: @apply.internetComments, internetContractConcludedBy: @apply.internetContractConcludedBy, internetContractDate: @apply.internetContractDate, internetContractNumber: @apply.internetContractNumber, internetDocsPassDate: @apply.internetDocsPassDate, internetInstallDate: @apply.internetInstallDate, internetPaymentDate: @apply.internetPaymentDate, internetPorts: @apply.internetPorts, iptvApplyDate: @apply.iptvApplyDate, iptvApplyStatus: @apply.iptvApplyStatus, iptvContractConcludedBy: @apply.iptvContractConcludedBy, iptvContractDate: @apply.iptvContractDate, iptvContractNumber: @apply.iptvContractNumber, iptvInstallDate: @apply.iptvInstallDate, iptvPaymentDate: @apply.iptvPaymentDate, iptvPorts: @apply.iptvPorts, nameOrFIO: @apply.nameOrFIO, phoneApplyDate: @apply.phoneApplyDate, phoneApplyStatus: @apply.phoneApplyStatus, phoneComments: @apply.phoneComments, phoneContractConcludedBy: @apply.phoneContractConcludedBy, phoneContractDate: @apply.phoneContractDate, phoneContractNumber: @apply.phoneContractNumber, phoneDocsPassDate: @apply.phoneDocsPassDate, phoneInstallDate: @apply.phoneInstallDate, phonePaymentDate: @apply.phonePaymentDate, phonePorts: @apply.phonePorts, plannedInternetInstallDate: @apply.plannedInternetInstallDate, plannedPhoneInstallDate: @apply.plannedPhoneInstallDate, setToBox: @apply.setToBox, street: @apply.street }
    assert_redirected_to apply_path(assigns(:apply))
  end

  test "should destroy apply" do
    assert_difference('Apply.count', -1) do
      delete :destroy, id: @apply
    end

    assert_redirected_to applies_path
  end
end
