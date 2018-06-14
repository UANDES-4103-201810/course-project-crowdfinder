require "application_system_test_case"

class MerchesTest < ApplicationSystemTestCase
  setup do
    @merch = merches(:one)
  end

  test "visiting the index" do
    visit merches_url
    assert_selector "h1", text: "Merches"
  end

  test "creating a Merch" do
    visit merches_url
    click_on "New Merch"

    fill_in "Description", with: @merch.description
    fill_in "Name", with: @merch.name
    fill_in "Promise", with: @merch.promise_id
    click_on "Create Merch"

    assert_text "Merch was successfully created"
    click_on "Back"
  end

  test "updating a Merch" do
    visit merches_url
    click_on "Edit", match: :first

    fill_in "Description", with: @merch.description
    fill_in "Name", with: @merch.name
    fill_in "Promise", with: @merch.promise_id
    click_on "Update Merch"

    assert_text "Merch was successfully updated"
    click_on "Back"
  end

  test "destroying a Merch" do
    visit merches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Merch was successfully destroyed"
  end
end
