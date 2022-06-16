require "application_system_test_case"

class ArchiveTypesTest < ApplicationSystemTestCase
  setup do
    @archive_type = archive_types(:one)
  end

  test "visiting the index" do
    visit archive_types_url
    assert_selector "h1", text: "Archive types"
  end

  test "should create archive type" do
    visit archive_types_url
    click_on "New archive type"

    fill_in "Ancestry", with: @archive_type.ancestry
    fill_in "Archive type", with: @archive_type.archive_type
    click_on "Create Archive type"

    assert_text "Archive type was successfully created"
    click_on "Back"
  end

  test "should update Archive type" do
    visit archive_type_url(@archive_type)
    click_on "Edit this archive type", match: :first

    fill_in "Ancestry", with: @archive_type.ancestry
    fill_in "Archive type", with: @archive_type.archive_type
    click_on "Update Archive type"

    assert_text "Archive type was successfully updated"
    click_on "Back"
  end

  test "should destroy Archive type" do
    visit archive_type_url(@archive_type)
    click_on "Destroy this archive type", match: :first

    assert_text "Archive type was successfully destroyed"
  end
end
