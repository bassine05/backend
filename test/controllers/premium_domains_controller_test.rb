require 'test_helper'

class PremiumDomainsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @premium_domain = premium_domains(:one)
  end

  test "should get index" do
    get premium_domains_url
    assert_response :success
  end

  test "should get new" do
    get new_premium_domain_url
    assert_response :success
  end

  test "should create premium_domain" do
    assert_difference('PremiumDomain.count') do
      post premium_domains_url, params: { premium_domain: { categorie_id: @premium_domain.categorie_id, date_debut: @premium_domain.date_debut, date_fin: @premium_domain.date_fin, offre: @premium_domain.offre } }
    end

    assert_redirected_to premium_domain_url(PremiumDomain.last)
  end

  test "should show premium_domain" do
    get premium_domain_url(@premium_domain)
    assert_response :success
  end

  test "should get edit" do
    get edit_premium_domain_url(@premium_domain)
    assert_response :success
  end

  test "should update premium_domain" do
    patch premium_domain_url(@premium_domain), params: { premium_domain: { categorie_id: @premium_domain.categorie_id, date_debut: @premium_domain.date_debut, date_fin: @premium_domain.date_fin, offre: @premium_domain.offre } }
    assert_redirected_to premium_domain_url(@premium_domain)
  end

  test "should destroy premium_domain" do
    assert_difference('PremiumDomain.count', -1) do
      delete premium_domain_url(@premium_domain)
    end

    assert_redirected_to premium_domains_url
  end
end
