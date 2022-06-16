require "test_helper"

class ArchiveTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @archive_type = archive_types(:one)
  end

  test "should get index" do
    get archive_types_url
    assert_response :success
  end

  test "should get new" do
    get new_archive_type_url
    assert_response :success
  end

  test "should create archive_type" do
    assert_difference("ArchiveType.count") do
      post archive_types_url, params: { archive_type: { ancestry: @archive_type.ancestry, archive_type: @archive_type.archive_type } }
    end

    assert_redirected_to archive_type_url(ArchiveType.last)
  end

  test "should show archive_type" do
    get archive_type_url(@archive_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_archive_type_url(@archive_type)
    assert_response :success
  end

  test "should update archive_type" do
    patch archive_type_url(@archive_type), params: { archive_type: { ancestry: @archive_type.ancestry, archive_type: @archive_type.archive_type } }
    assert_redirected_to archive_type_url(@archive_type)
  end

  test "should destroy archive_type" do
    assert_difference("ArchiveType.count", -1) do
      delete archive_type_url(@archive_type)
    end

    assert_redirected_to archive_types_url
  end
end
