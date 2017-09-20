require 'test_helper'

class UsersEditTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  def setup
    @user = users(:michael) # Maybe change to users(:raleigh) if it doesnt work
  end

  test 'unsuccessful edit' do

    get edit_user_path(@user)
    assert_template('users/edit')
    patch user_path(@user), params: { user: { name:  "",
                                              email: "foo@invalid",
                                              password:              "foo",
                                              password_confirmation: "bar" } }
  end

end
