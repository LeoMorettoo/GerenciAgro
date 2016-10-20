require 'test_helper'

class CentroCustosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @centro_custo = centro_custos(:one)
  end

  test "should get index" do
    get centro_custos_url
    assert_response :success
  end

  test "should get new" do
    get new_centro_custo_url
    assert_response :success
  end

  test "should create centro_custo" do
    assert_difference('CentroCusto.count') do
      post centro_custos_url, params: { centro_custo: { descricao: @centro_custo.descricao } }
    end

    assert_redirected_to centro_custo_url(CentroCusto.last)
  end

  test "should show centro_custo" do
    get centro_custo_url(@centro_custo)
    assert_response :success
  end

  test "should get edit" do
    get edit_centro_custo_url(@centro_custo)
    assert_response :success
  end

  test "should update centro_custo" do
    patch centro_custo_url(@centro_custo), params: { centro_custo: { descricao: @centro_custo.descricao } }
    assert_redirected_to centro_custo_url(@centro_custo)
  end

  test "should destroy centro_custo" do
    assert_difference('CentroCusto.count', -1) do
      delete centro_custo_url(@centro_custo)
    end

    assert_redirected_to centro_custos_url
  end
end
