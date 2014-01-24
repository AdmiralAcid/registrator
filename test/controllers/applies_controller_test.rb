require 'test_helper'

class AppliesControllerTest < ActionController::TestCase
  setup do
    @apply = applies(:one)
    @update = {
      applyNumber: 11111, 
      phoneApplyDate: "2012-12-20", 
      internetApplyDate: "2012-12-20", 
      iptvApplyDate: "2012-12-20", 
      nameOrFIO: "Померанцев Поликарп Валерьевич", 
      street: "ул.Карла Маркса", 
      house: 22, 
      #building: "А", 
      apartmentOrOffice: "14", 
      floor: "3", 
      #entrance: "1", 
      phoneApplyStatus: "Отложено", 
      internetApplyStatus: "Отказ", 
      iptvApplyStatus: "Установка", 
      applyTreatedBy: "Петрова Петра Петровна", 
      plannedPhoneInstallDate: "2012-12-03", 
      plannedInternetInstallDate: "2012-12-27", 
      phoneComments: "--", 
      internetComments: "фыр-фыр", 
      phoneContractNumber: 634, 
      phoneContractDate: "2012-12-18", 
      phonePorts: "7+7", 
      phoneContractConcludedBy: "Петрова Петра Петровна", 
      phonePaymentDate: "2012-12-18", 
      phoneDocsPassDate: "2012-12-01", 
      phoneInstallDate: "2013-01-13", 
      internetContractNumber: 633, 
      internetContractDate: "2012-12-28", 
      internetPorts: "13", 
      internetContractConcludedBy: "Петрова Петра Петровна", 
      internetPaymentDate: "2012-12-11", 
      internetDocsPassDate: "2012-12-21", 
      internetInstallDate: "2013-01-12", 
      iptvContractNumber: 635, 
      iptvContractDate: "2012-12-28", 
      iptvPorts: "3", 
      iptvContractConcludedBy: "Петрова Петра Петровна", 
      iptvPaymentDate: "2012-12-28", 
      iptvInstallDate: "2013-01-12", 
      #setToBox: "true", 
      clientType: "Физ лицо в нежилом помещении", 
      insertionDate: "2013-01-24"
    }
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
      post :create, apply: @update
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
    patch :update, id: @apply, apply: @update
    assert_redirected_to apply_path(assigns(:apply))
  end

  test "should destroy apply" do
    assert_difference('Apply.count', -1) do
      delete :destroy, id: @apply
    end

    assert_redirected_to applies_path
  end
end
