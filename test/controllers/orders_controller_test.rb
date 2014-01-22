require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post :create, order: { aoReturningDate: @order.aoReturningDate, apartmentOrOffice: @order.apartmentOrOffice, applyNumber: @order.applyNumber, building: @order.building, comments: @order.comments, contactData: @order.contactData, contractNumber: @order.contractNumber, cost: @order.cost, entrance: @order.entrance, floor: @order.floor, formingDate: @order.formingDate, house: @order.house, nameOrFIO: @order.nameOrFIO, orderNumber: @order.orderNumber, orderType: @order.orderType, performDate: @order.performDate, performer: @order.performer, personType: @order.personType, phoneNumber: @order.phoneNumber, portsNumber: @order.portsNumber, responsiblePerson: @order.responsiblePerson, service: @order.service, street: @order.street, uasDate: @order.uasDate, utuSendingDate: @order.utuSendingDate }
    end

    assert_redirected_to order_path(assigns(:order))
  end

  test "should show order" do
    get :show, id: @order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order
    assert_response :success
  end

  test "should update order" do
    patch :update, id: @order, order: { aoReturningDate: @order.aoReturningDate, apartmentOrOffice: @order.apartmentOrOffice, applyNumber: @order.applyNumber, building: @order.building, comments: @order.comments, contactData: @order.contactData, contractNumber: @order.contractNumber, cost: @order.cost, entrance: @order.entrance, floor: @order.floor, formingDate: @order.formingDate, house: @order.house, nameOrFIO: @order.nameOrFIO, orderNumber: @order.orderNumber, orderType: @order.orderType, performDate: @order.performDate, performer: @order.performer, personType: @order.personType, phoneNumber: @order.phoneNumber, portsNumber: @order.portsNumber, responsiblePerson: @order.responsiblePerson, service: @order.service, street: @order.street, uasDate: @order.uasDate, utuSendingDate: @order.utuSendingDate }
    assert_redirected_to order_path(assigns(:order))
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete :destroy, id: @order
    end

    assert_redirected_to orders_path
  end
end
