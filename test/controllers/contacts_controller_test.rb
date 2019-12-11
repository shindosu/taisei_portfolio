require 'test_helper'

class ContactsControllerTest < ActionDispatch::IntegrationTest
  test "should get contact_me" do
    get contacts_contact_me_url
    assert_response :success
  end

end
