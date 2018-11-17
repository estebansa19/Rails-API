require 'test_helper'

class ArticulosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @articulo = articulos(:one)
  end

  test "should get index" do
    get articulos_url, as: :json
    assert_response :success
  end

  test "should create articulo" do
    assert_difference('Articulo.count') do
      post articulos_url, params: { articulo: { cantidad: @articulo.cantidad, nombre: @articulo.nombre, precio: @articulo.precio } }, as: :json
    end

    assert_response 201
  end

  test "should show articulo" do
    get articulo_url(@articulo), as: :json
    assert_response :success
  end

  test "should update articulo" do
    patch articulo_url(@articulo), params: { articulo: { cantidad: @articulo.cantidad, nombre: @articulo.nombre, precio: @articulo.precio } }, as: :json
    assert_response 200
  end

  test "should destroy articulo" do
    assert_difference('Articulo.count', -1) do
      delete articulo_url(@articulo), as: :json
    end

    assert_response 204
  end
end
