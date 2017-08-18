require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    # check that title is correct
    assert_select "title", "Ruby on Rails Tutorial Sample App"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    #check that title is correct
    assert_select "title", "Help | Ruby on Rails Tutorial Sample App"
  end

# add in test to make sure code gets to "About" page, test should initially fail
  test "should get about" do
    get static_pages_about_url
    assert_response :success
    # check that title is correct
    assert_select "title", "About | Ruby on Rails Tutorial Sample App"
  end

  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
    assert_select "title", "Contact | Ruby on Rails Tutorial Sample App"
  end

end
