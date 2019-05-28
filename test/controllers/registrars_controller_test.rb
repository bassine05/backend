require 'test_helper'

class RegistrarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registrar = registrars(:one)
  end

  test "should get index" do
    get registrars_url
    assert_response :success
  end

  test "should get new" do
    get new_registrar_url
    assert_response :success
  end

  test "should create registrar" do
    assert_difference('Registrar.count') do
      post registrars_url, params: { registrar: { adresse: @registrar.adresse, city_id: @registrar.city_id, fax: @registrar.fax, mail: @registrar.mail, name: @registrar.name, phone: @registrar.phone, url: @registrar.url } }
    end

    assert_redirected_to registrar_url(Registrar.last)
  end

  test "should show registrar" do
    get registrar_url(@registrar)
    assert_response :success
  end

  test "should get edit" do
    get edit_registrar_url(@registrar)
    assert_response :success
  end

  test "should update registrar" do
    patch registrar_url(@registrar), params: { registrar: { adresse: @registrar.adresse, city_id: @registrar.city_id, fax: @registrar.fax, mail: @registrar.mail, name: @registrar.name, phone: @registrar.phone, url: @registrar.url } }
    assert_redirected_to registrar_url(@registrar)
  end

  test "should destroy registrar" do
    assert_difference('Registrar.count', -1) do
      delete registrar_url(@registrar)
    end

    assert_redirected_to registrars_url
  end
end
