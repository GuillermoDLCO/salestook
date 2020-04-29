require 'test_helper'

class EnvioControllerTest < ActionDispatch::IntegrationTest
  test "should get envios" do
    get envio_envios_url
    assert_response :success
  end

end
