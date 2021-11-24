require "test_helper"

class BakesSellsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bakes_sell = bakes_sells(:one)
  end

  test "should get index" do
    get bakes_sells_url
    assert_response :success
  end

  test "should get new" do
    get new_bakes_sell_url
    assert_response :success
  end

  test "should create bakes_sell" do
    assert_difference('BakesSell.count') do
      post bakes_sells_url, params: { bakes_sell: { date_sell: @bakes_sell.date_sell, name: @bakes_sell.name, price: @bakes_sell.price, quantity: @bakes_sell.quantity } }
    end

    assert_redirected_to bakes_sell_url(BakesSell.last)
  end

  test "should show bakes_sell" do
    get bakes_sell_url(@bakes_sell)
    assert_response :success
  end

  test "should get edit" do
    get edit_bakes_sell_url(@bakes_sell)
    assert_response :success
  end

  test "should update bakes_sell" do
    patch bakes_sell_url(@bakes_sell), params: { bakes_sell: { date_sell: @bakes_sell.date_sell, name: @bakes_sell.name, price: @bakes_sell.price, quantity: @bakes_sell.quantity } }
    assert_redirected_to bakes_sell_url(@bakes_sell)
  end

  test "should destroy bakes_sell" do
    assert_difference('BakesSell.count', -1) do
      delete bakes_sell_url(@bakes_sell)
    end

    assert_redirected_to bakes_sells_url
  end
end
