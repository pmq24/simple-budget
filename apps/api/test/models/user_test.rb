require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'should save user when email follows valid form' do
    assert User.new(email: 'test@example.com')
  end

  test 'should not save user when email is empty' do
    assert_not User.new.save, 'User saved, even email is empty'
  end

  test "should not save user when email doesn't follow valid form" do
    assert_not User.new(email: 'abc').save,
               "User saved, even email doesn't follow valid form"
  end

  test 'should not save user when email already exists' do
    email = 'test@example.com'
    assert User.new(email: email).save, 'Failed to save user'
    assert_not User.new(email: email).save,
               'User saved, even email already exists'
  end
end
