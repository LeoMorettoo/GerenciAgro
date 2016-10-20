require 'test_helper'

class ImpostosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @imposto = impostos(:one)
  end

  test "should get index" do
    get impostos_url
    assert_response :success
  end

  test "should get new" do
    get new_imposto_url
    assert_response :success
  end

  test "should create imposto" do
    assert_difference('Imposto.count') do
      post impostos_url, params: { imposto: { descricao: @imposto.descricao } }
    end

    assert_redirected_to imposto_url(Imposto.last)
  end

  test "should show imposto" do
    get imposto_url(@imposto)
    assert_response :success
  end

  test "should get edit" do
    get edit_imposto_url(@imposto)
    assert_response :success
  end

  test "should update imposto" do
    patch imposto_url(@imposto), params: { imposto: { descricao: @imposto.descricao } }
    assert_redirected_to imposto_url(@imposto)
  end

  test "should destroy imposto" do
    assert_difference('Imposto.count', -1) do
      delete imposto_url(@imposto)
    end

    assert_redirected_to impostos_url
  end
end
