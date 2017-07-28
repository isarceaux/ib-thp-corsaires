require 'test_helper'

class CorsairesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_corsaire_path
    assert_response :success
  end

  # test "should get edit" do
  #   get edit_corsaire_path
  #   assert_response :success
  # end

  # test "should get index" do
  #   get corsaires_index_url
  #   assert_response :success
  # end

  # test "should get show" do
  #   get corsaires_show_url
  #   assert_response :success
  # end

end
