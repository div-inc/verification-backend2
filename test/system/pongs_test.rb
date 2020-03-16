require "application_system_test_case"

class PongsTest < ApplicationSystemTestCase
  setup do
    @pong = pongs(:one)
  end

  test "visiting the index" do
    visit pongs_url
    assert_selector "h1", text: "Pongs"
  end

  test "creating a Pong" do
    visit pongs_url
    click_on "New Pong"

    click_on "Create Pong"

    assert_text "Pong was successfully created"
    click_on "Back"
  end

  test "updating a Pong" do
    visit pongs_url
    click_on "Edit", match: :first

    click_on "Update Pong"

    assert_text "Pong was successfully updated"
    click_on "Back"
  end

  test "destroying a Pong" do
    visit pongs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pong was successfully destroyed"
  end
end
