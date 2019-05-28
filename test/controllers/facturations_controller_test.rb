require 'test_helper'

class FacturationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @facturation = facturations(:one)
  end

  test "should get index" do
    get facturations_url
    assert_response :success
  end

  test "should get new" do
    get new_facturation_url
    assert_response :success
  end

  test "should create facturation" do
    assert_difference('Facturation.count') do
      post facturations_url, params: { facturation: { account: @facturation.account, dateEnvoi: @facturation.dateEnvoi, dateLimite: @facturation.dateLimite, num: @facturation.num, registrar_id: @facturation.registrar_id, remise: @facturation.remise } }
    end

    assert_redirected_to facturation_url(Facturation.last)
  end

  test "should show facturation" do
    get facturation_url(@facturation)
    assert_response :success
  end

  test "should get edit" do
    get edit_facturation_url(@facturation)
    assert_response :success
  end

  test "should update facturation" do
    patch facturation_url(@facturation), params: { facturation: { account: @facturation.account, dateEnvoi: @facturation.dateEnvoi, dateLimite: @facturation.dateLimite, num: @facturation.num, registrar_id: @facturation.registrar_id, remise: @facturation.remise } }
    assert_redirected_to facturation_url(@facturation)
  end

  test "should destroy facturation" do
    assert_difference('Facturation.count', -1) do
      delete facturation_url(@facturation)
    end

    assert_redirected_to facturations_url
  end
end
