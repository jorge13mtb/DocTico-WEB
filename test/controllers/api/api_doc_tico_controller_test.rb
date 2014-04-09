require 'test_helper'

class Api::ApiDocTicoControllerTest < ActionController::TestCase
  test "should get autenticar_usuario" do
    get :autenticar_usuario
    assert_response :success
  end

  test "should get centros_salud" do
    get :centros_salud
    assert_response :success
  end

  test "should get citas" do
    get :citas
    assert_response :success
  end

  test "should get nueva_cita" do
    get :nueva_cita
    assert_response :success
  end

  test "should get presion_arterial" do
    get :presion_arterial
    assert_response :success
  end

  test "should get nueva_presion_arterial" do
    get :nueva_presion_arterial
    assert_response :success
  end

end
