require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  setup do
    @order = orders(:one)
    @update = {
      orderNumber: 235,
      utuSendingDate: "2013-07-08",
      #uasDate: "2013-08-07",
      performDate: "2013-03-04",
      performer: "Джа Джа Бинкс",
      applyNumber: 291,
      contractNumber: 388,
      service_id: 2,
      orderType_id: 15,
      cost: 456.0,
      portsNumber: "5+1",
      phoneNumber: "+79144678345;+79140093236",
      nameOrFIO: "Грендель Зигфрид Беовульфыч",
      street: "ул. Пионерская",
      house: 10,
      building: "А",
      apartmentOrOffice: 10,
      floor: 2,
      #entrance: 1,
      responsiblePerson: "Оби Ван Кеноби",
      comments: "да пребудет с нами сила",
      contactData: "пейджер Оби Вана: 15-09",
      clientType_id: 1,
      formingDate: "2013-11-13",
      aoReturningDate: "2015-01-16"
    }
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
      post :create, order: @update
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
    patch :update, id: @order, order: @update
    assert_redirected_to order_path(assigns(:order))
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete :destroy, id: @order
    end

    assert_redirected_to orders_path
  end
end
