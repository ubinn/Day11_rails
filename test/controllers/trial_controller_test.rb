require 'test_helper'

class TrialControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get trial_index_url
    assert_response :success
  end

  test "should get new" do
    get trial_new_url
    assert_response :success
  end

  test "should get edit" do
    get trial_edit_url
    assert_response :success
  end

  test "should get show" do
    get trial_show_url
    assert_response :success
  end

end
