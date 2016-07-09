require 'test_helper'

class CoreFilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @core_file = core_files(:one)
  end

  test "should get index" do
    get core_files_url
    assert_response :success
  end

  test "should get new" do
    get new_core_file_url
    assert_response :success
  end

  test "should create core_file" do
    assert_difference('CoreFile.count') do
      post core_files_url, params: { core_file: { content: @core_file.content, file_name: @core_file.file_name, mdsum: @core_file.mdsum, size: @core_file.size } }
    end

    assert_redirected_to core_file_url(CoreFile.last)
  end

  test "should show core_file" do
    get core_file_url(@core_file)
    assert_response :success
  end

  test "should get edit" do
    get edit_core_file_url(@core_file)
    assert_response :success
  end

  test "should update core_file" do
    patch core_file_url(@core_file), params: { core_file: { content: @core_file.content, file_name: @core_file.file_name, mdsum: @core_file.mdsum, size: @core_file.size } }
    assert_redirected_to core_file_url(@core_file)
  end

  test "should destroy core_file" do
    assert_difference('CoreFile.count', -1) do
      delete core_file_url(@core_file)
    end

    assert_redirected_to core_files_url
  end
end
