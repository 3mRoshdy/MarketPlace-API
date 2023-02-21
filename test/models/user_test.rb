require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "user with valid email should be valid" do
    user = User.new(email: 'test@test.org', password_digest: 'test')

    assert user.valid?
  end

  test "user with invalid email should not be valid" do
    user = User.new(email: 'test.org', password_digest: 'test')

    assert_not user.valid?
  end

  test "user with duplicate emaul should not be valid" do
    other_users = users(:one)
    user = User.new(email: other_user.email, password_digest:
      'test')

    assert_not user.valid?
  end
end