require "test_helper"

class UserTest < ActiveSupport::TestCase
  test 'should not save User without credentials' do
    user = User.new

    assert_not user.save, 'Saved user without credentials'
  end

end
