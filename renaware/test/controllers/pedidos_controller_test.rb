require 'test_helper'

class PedidosControllerTest < ActionDispatch::IntegrationTest
  test "should get pedidos" do
    get pedidos_pedidos_url
    assert_response :success
  end

end
