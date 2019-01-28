require "application_system_test_case"

class GentresTest < ApplicationSystemTestCase
  setup do
    @gentre = gentres(:one)
  end

  test "visiting the index" do
    visit gentres_url
    assert_selector "h1", text: "Gentres"
  end

  test "creating a Gentre" do
    visit gentres_url
    click_on "New Gentre"

    fill_in "Name", with: @gentre.name
    click_on "Create Gentre"

    assert_text "Gentre was successfully created"
    click_on "Back"
  end

  test "updating a Gentre" do
    visit gentres_url
    click_on "Edit", match: :first

    fill_in "Name", with: @gentre.name
    click_on "Update Gentre"

    assert_text "Gentre was successfully updated"
    click_on "Back"
  end

  test "destroying a Gentre" do
    visit gentres_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gentre was successfully destroyed"
  end
end
