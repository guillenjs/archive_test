require "application_system_test_case"

class ArchivesTest < ApplicationSystemTestCase
  setup do
    @archive = archives(:one)
  end

  test "visiting the index" do
    visit archives_url
    assert_selector "h1", text: "Archives"
  end

  test "should create archive" do
    visit archives_url
    click_on "New archive"

    fill_in "Archive data", with: @archive.archive_data
    fill_in "Archive type", with: @archive.archive_type_id
    fill_in "Title", with: @archive.title
    click_on "Create Archive"

    assert_text "Archive was successfully created"
    click_on "Back"
  end

  test "should update Archive" do
    visit archive_url(@archive)
    click_on "Edit this archive", match: :first

    fill_in "Archive data", with: @archive.archive_data
    fill_in "Archive type", with: @archive.archive_type_id
    fill_in "Title", with: @archive.title
    click_on "Update Archive"

    assert_text "Archive was successfully updated"
    click_on "Back"
  end

  test "should destroy Archive" do
    visit archive_url(@archive)
    click_on "Destroy this archive", match: :first

    assert_text "Archive was successfully destroyed"
  end
end
