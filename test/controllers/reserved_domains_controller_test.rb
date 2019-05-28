require 'test_helper'

class ReservedDomainsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reserved_domain = reserved_domains(:one)
  end

  test "should get index" do
    get reserved_domains_url
    assert_response :success
  end

  test "should get new" do
    get new_reserved_domain_url
    assert_response :success
  end

  test "should create reserved_domain" do
    assert_difference('ReservedDomain.count') do
      post reserved_domains_url, params: { reserved_domain: { code_auth: @reserved_domain.code_auth, motif: @reserved_domain.motif, tag_id: @reserved_domain.tag_id } }
    end

    assert_redirected_to reserved_domain_url(ReservedDomain.last)
  end

  test "should show reserved_domain" do
    get reserved_domain_url(@reserved_domain)
    assert_response :success
  end

  test "should get edit" do
    get edit_reserved_domain_url(@reserved_domain)
    assert_response :success
  end

  test "should update reserved_domain" do
    patch reserved_domain_url(@reserved_domain), params: { reserved_domain: { code_auth: @reserved_domain.code_auth, motif: @reserved_domain.motif, tag_id: @reserved_domain.tag_id } }
    assert_redirected_to reserved_domain_url(@reserved_domain)
  end

  test "should destroy reserved_domain" do
    assert_difference('ReservedDomain.count', -1) do
      delete reserved_domain_url(@reserved_domain)
    end

    assert_redirected_to reserved_domains_url
  end
end
