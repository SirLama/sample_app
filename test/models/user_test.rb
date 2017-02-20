require 'test_helper'

class UserTest < ActiveSupport::TestCase
    def setup
      @user=User.new(name:"Malach Salama", email:"malach@yahoo.com")
    end
    test "Should be valid" do
      assert @user.valid?
    end
    test "name should be present" do
      @user.name="   "
      assert_not @user.valid?
    end
    test "email should be present" do
      @user.email="  "
      assert_not @user.valid?
    end
end
