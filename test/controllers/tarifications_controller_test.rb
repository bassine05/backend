require 'test_helper'

class TarificationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tarification = tarifications(:one)
  end

  test "should get index" do
    get tarifications_url
    assert_response :success
  end

  test "should get new" do
    get new_tarification_url
    assert_response :success
  end

  test "should create tarification" do
    assert_difference('Tarification.count') do
      post tarifications_url, params: { tarification: { price: @tarification.price, type: @tarification.type, year: @tarification.year } }
    end

    assert_redirected_to tarification_url(Tarification.last)
  end

  test "should show tarification" do
    get tarification_url(@tarification)
    assert_response :success
  end

  test "should get edit" do
    get edit_tarification_url(@tarification)
    assert_response :success
  end

  test "should update tarification" do
    patch tarification_url(@tarification), params: { tarification: { price: @tarification.price, type: @tarification.type, year: @tarification.year } }
    assert_redirected_to tarification_url(@tarification)
  end

  test "should destroy tarification" do
    assert_difference('Tarification.count', -1) do
      delete tarification_url(@tarification)
    end

    assert_redirected_to tarifications_url
  end
end
