require "test_helper"

class ShoppingitemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shoppingitem = shoppingitems(:one)
  end

  test "should get index" do
    get shoppingitems_url
    assert_response :success
  end

  test "should get new" do
    get new_shoppingitem_url
    assert_response :success
  end

  test "should create shoppingitem" do
    assert_difference('Shoppingitem.count') do
      post shoppingitems_url, params: { shoppingitem: { email: @shoppingitem.email, item_name: @shoppingitem.item_name, item_number: @shoppingitem.item_number, price: @shoppingitem.price } }
    end

    assert_redirected_to shoppingitem_url(Shoppingitem.last)
  end

  test "should show shoppingitem" do
    get shoppingitem_url(@shoppingitem)
    assert_response :success
  end

  test "should get edit" do
    get edit_shoppingitem_url(@shoppingitem)
    assert_response :success
  end

  test "should update shoppingitem" do
    patch shoppingitem_url(@shoppingitem), params: { shoppingitem: { email: @shoppingitem.email, item_name: @shoppingitem.item_name, item_number: @shoppingitem.item_number, price: @shoppingitem.price } }
    assert_redirected_to shoppingitem_url(@shoppingitem)
  end

  test "should destroy shoppingitem" do
    assert_difference('Shoppingitem.count', -1) do
      delete shoppingitem_url(@shoppingitem)
    end

    assert_redirected_to shoppingitems_url
  end
end
