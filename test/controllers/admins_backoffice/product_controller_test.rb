require 'test_helper'

class AdminsBackoffice::ProductControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_backoffice_product_index_url
    assert_response :success
  end

end
