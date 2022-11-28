require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should save user when email follows valid form and doesn't already exist and password hash is not empty" do
    assert User.new(email: 'test@example.com', password_hash: 'abc').save
  end

  test 'should not save user when email is empty' do
    assert_not User.new(password_hash: 'abc').save
  end

  test 'should not save user when email doesn\'t follow valid form' do
    assert_not User.new(email: 'abc', password_hash: 'abc').save
  end

  test 'should not save user when password hash is empty' do
    assert_not User.new(email: 'test@example.com').save
  end
end
