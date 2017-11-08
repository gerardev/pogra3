require 'test_helper'

class ParqueosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parqueo = parqueos(:one)
  end

  test "should get index" do
    get parqueos_url
    assert_response :success
  end

  test "should get new" do
    get new_parqueo_url
    assert_response :success
  end

  test "should create parqueo" do
    assert_difference('Parqueo.count') do
      post parqueos_url, params: { parqueo: { estado: @parqueo.estado, fecha: @parqueo.fecha, tipo: @parqueo.tipo } }
    end

    assert_redirected_to parqueo_url(Parqueo.last)
  end

  test "should show parqueo" do
    get parqueo_url(@parqueo)
    assert_response :success
  end

  test "should get edit" do
    get edit_parqueo_url(@parqueo)
    assert_response :success
  end

  test "should update parqueo" do
    patch parqueo_url(@parqueo), params: { parqueo: { estado: @parqueo.estado, fecha: @parqueo.fecha, tipo: @parqueo.tipo } }
    assert_redirected_to parqueo_url(@parqueo)
  end

  test "should destroy parqueo" do
    assert_difference('Parqueo.count', -1) do
      delete parqueo_url(@parqueo)
    end

    assert_redirected_to parqueos_url
  end
end
