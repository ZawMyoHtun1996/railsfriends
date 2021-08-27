require "application_system_test_case"

class BestfriendsTest < ApplicationSystemTestCase
  setup do
    @bestfriend = bestfriends(:one)
  end

  test "visiting the index" do
    visit bestfriends_url
    assert_selector "h1", text: "Bestfriends"
  end

  test "creating a Bestfriend" do
    visit bestfriends_url
    click_on "New Bestfriend"

    fill_in "Email", with: @bestfriend.email
    fill_in "First name", with: @bestfriend.first_name
    fill_in "Last name", with: @bestfriend.last_name
    fill_in "Phone", with: @bestfriend.phone
    fill_in "Twitter", with: @bestfriend.twitter
    click_on "Create Bestfriend"

    assert_text "Bestfriend was successfully created"
    click_on "Back"
  end

  test "updating a Bestfriend" do
    visit bestfriends_url
    click_on "Edit", match: :first

    fill_in "Email", with: @bestfriend.email
    fill_in "First name", with: @bestfriend.first_name
    fill_in "Last name", with: @bestfriend.last_name
    fill_in "Phone", with: @bestfriend.phone
    fill_in "Twitter", with: @bestfriend.twitter
    click_on "Update Bestfriend"

    assert_text "Bestfriend was successfully updated"
    click_on "Back"
  end

  test "destroying a Bestfriend" do
    visit bestfriends_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bestfriend was successfully destroyed"
  end
end
