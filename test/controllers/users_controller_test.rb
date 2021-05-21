require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test 'return user schedule in sched' do
    get user_sched_path

    assert_response :success
  end

  test 'should get new' do
    get new_user_path

    assert_response :success
  end

  test 'should create user' do
    post create_user_path, params: { user: { email: 'sample@gmail.com', username: 'Sample', password: '12345' } }

    assert_response :redirect
  end
end
