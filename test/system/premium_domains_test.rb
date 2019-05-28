require "application_system_test_case"

class PremiumDomainsTest < ApplicationSystemTestCase
  setup do
    @premium_domain = premium_domains(:one)
  end

  test "visiting the index" do
    visit premium_domains_url
    assert_selector "h1", text: "Premium Domains"
  end

  test "creating a Premium domain" do
    visit premium_domains_url
    click_on "New Premium Domain"

    fill_in "Categorie", with: @premium_domain.categorie_id
    fill_in "Date debut", with: @premium_domain.date_debut
    fill_in "Date fin", with: @premium_domain.date_fin
    fill_in "Offre", with: @premium_domain.offre
    click_on "Create Premium domain"

    assert_text "Premium domain was successfully created"
    click_on "Back"
  end

  test "updating a Premium domain" do
    visit premium_domains_url
    click_on "Edit", match: :first

    fill_in "Categorie", with: @premium_domain.categorie_id
    fill_in "Date debut", with: @premium_domain.date_debut
    fill_in "Date fin", with: @premium_domain.date_fin
    fill_in "Offre", with: @premium_domain.offre
    click_on "Update Premium domain"

    assert_text "Premium domain was successfully updated"
    click_on "Back"
  end

  test "destroying a Premium domain" do
    visit premium_domains_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Premium domain was successfully destroyed"
  end
end
