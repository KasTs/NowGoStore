require 'test_helper'

class AdminsBackoffice::SalesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_backoffice_sales_index_url
    assert_response :success
  end

end
