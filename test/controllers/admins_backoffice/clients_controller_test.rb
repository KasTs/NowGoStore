require 'test_helper'

class AdminsBackoffice::ClientsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_backoffice_clients_index_url
    assert_response :success
  end

end
