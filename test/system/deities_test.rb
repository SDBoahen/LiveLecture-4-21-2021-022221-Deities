require "application_system_test_case"

class DeitiesTest < ApplicationSystemTestCase
  setup do
    @deity = deities(:one)
  end

  test "visiting the index" do
    visit deities_url
    assert_selector "h1", text: "Deities"
  end

  test "creating a Deity" do
    visit deities_url
    click_on "New Deity"

    fill_in "Height", with: @deity.height
    fill_in "Human sacrifices", with: @deity.human_sacrifices
    check "In space" if @deity.in_space
    fill_in "Name", with: @deity.name
    check "On earth" if @deity.on_earth
    fill_in "Power", with: @deity.power
    check "Sacrifices" if @deity.sacrifices
    fill_in "Time judgment", with: @deity.time_judgment
    check "Wears glasses" if @deity.wears_glasses
    click_on "Create Deity"

    assert_text "Deity was successfully created"
    click_on "Back"
  end

  test "updating a Deity" do
    visit deities_url
    click_on "Edit", match: :first

    fill_in "Height", with: @deity.height
    fill_in "Human sacrifices", with: @deity.human_sacrifices
    check "In space" if @deity.in_space
    fill_in "Name", with: @deity.name
    check "On earth" if @deity.on_earth
    fill_in "Power", with: @deity.power
    check "Sacrifices" if @deity.sacrifices
    fill_in "Time judgment", with: @deity.time_judgment
    check "Wears glasses" if @deity.wears_glasses
    click_on "Update Deity"

    assert_text "Deity was successfully updated"
    click_on "Back"
  end

  test "destroying a Deity" do
    visit deities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Deity was successfully destroyed"
  end
end
