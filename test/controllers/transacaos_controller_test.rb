require 'test_helper'

class TransacaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transacao = transacaos(:one)
  end

  test "should get index" do
    get transacaos_url
    assert_response :success
  end

  test "should get new" do
    get new_transacao_url
    assert_response :success
  end

  test "should create transacao" do
    assert_difference('Transacao.count') do
      post transacaos_url, params: { transacao: { centro_custo: @transacao.centro_custo, cliente_id: @transacao.cliente_id, fornecedor_id: @transacao.fornecedor_id, valor: @transacao.valor } }
    end

    assert_redirected_to transacao_url(Transacao.last)
  end

  test "should show transacao" do
    get transacao_url(@transacao)
    assert_response :success
  end

  test "should get edit" do
    get edit_transacao_url(@transacao)
    assert_response :success
  end

  test "should update transacao" do
    patch transacao_url(@transacao), params: { transacao: { centro_custo: @transacao.centro_custo, cliente_id: @transacao.cliente_id, fornecedor_id: @transacao.fornecedor_id, valor: @transacao.valor } }
    assert_redirected_to transacao_url(@transacao)
  end

  test "should destroy transacao" do
    assert_difference('Transacao.count', -1) do
      delete transacao_url(@transacao)
    end

    assert_redirected_to transacaos_url
  end
end
