require 'test_helper'

class SpecificsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @specific = specifics(:one)
  end

  test "should get index" do
    get specifics_url
    assert_response :success
  end

  test "should get new" do
    get new_specific_url
    assert_response :success
  end

  test "should create specific" do
    assert_difference('Specific.count') do
      post specifics_url, params: { specific: { image_specific: @specific.image_specific, name: @specific.name, subcategory_id: @specific.subcategory_id } }
    end

    assert_redirected_to specific_url(Specific.last)
  end

  test "should show specific" do
    get specific_url(@specific)
    assert_response :success
  end

  test "should get edit" do
    get edit_specific_url(@specific)
    assert_response :success
  end

  test "should update specific" do
    patch specific_url(@specific), params: { specific: { image_specific: @specific.image_specific, name: @specific.name, subcategory_id: @specific.subcategory_id } }
    assert_redirected_to specific_url(@specific)
  end

  test "should destroy specific" do
    assert_difference('Specific.count', -1) do
      delete specific_url(@specific)
    end

    assert_redirected_to specifics_url
  end
end
