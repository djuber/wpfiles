require 'test_helper'

class WordpressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wordpress = wordpresses(:one)
  end

  test "should get index" do
    get wordpresses_url
    assert_response :success
  end

  test "should get new" do
    get new_wordpress_url
    assert_response :success
  end

  test "should create wordpress" do
    assert_difference('Wordpress.count') do
      post wordpresses_url, params: { wordpress: { release_date: @wordpress.release_date, version: @wordpress.version } }
    end

    assert_redirected_to wordpress_url(Wordpress.last)
  end

  test "should show wordpress" do
    get wordpress_url(@wordpress)
    assert_response :success
  end

  test "should get edit" do
    get edit_wordpress_url(@wordpress)
    assert_response :success
  end

  test "should update wordpress" do
    patch wordpress_url(@wordpress), params: { wordpress: { release_date: @wordpress.release_date, version: @wordpress.version } }
    assert_redirected_to wordpress_url(@wordpress)
  end

  test "should destroy wordpress" do
    assert_difference('Wordpress.count', -1) do
      delete wordpress_url(@wordpress)
    end

    assert_redirected_to wordpresses_url
  end
end
