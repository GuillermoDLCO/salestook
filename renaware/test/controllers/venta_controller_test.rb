require 'test_helper'

class VentaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ventum = venta(:one)
  end

  test "should get index" do
    get venta_url
    assert_response :success
  end

  test "should get new" do
    get new_ventum_url
    assert_response :success
  end

  test "should create ventum" do
    assert_difference('Ventum.count') do
      post venta_url, params: { ventum: { cliente_id: @ventum.cliente_id, monto: @ventum.monto, orden: @ventum.orden, product_id: @ventum.product_id, status: @ventum.status } }
    end

    assert_redirected_to ventum_url(Ventum.last)
  end

  test "should show ventum" do
    get ventum_url(@ventum)
    assert_response :success
  end

  test "should get edit" do
    get edit_ventum_url(@ventum)
    assert_response :success
  end

  test "should update ventum" do
    patch ventum_url(@ventum), params: { ventum: { cliente_id: @ventum.cliente_id, monto: @ventum.monto, orden: @ventum.orden, product_id: @ventum.product_id, status: @ventum.status } }
    assert_redirected_to ventum_url(@ventum)
  end

  test "should destroy ventum" do
    assert_difference('Ventum.count', -1) do
      delete ventum_url(@ventum)
    end

    assert_redirected_to venta_url
  end
end
