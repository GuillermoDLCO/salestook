require 'test_helper'

class StaticControllerTest < ActionDispatch::IntegrationTest
  test "should get Nosotros" do
    get static_Nosotros_url
    assert_response :success
  end

  test "should get Caracteristicas" do
    get static_Caracteristicas_url
    assert_response :success
  end

  test "should get Productos" do
    get static_Productos_url
    assert_response :success
  end

  test "should get Contacto" do
    get static_Contacto_url
    assert_response :success
  end

end
