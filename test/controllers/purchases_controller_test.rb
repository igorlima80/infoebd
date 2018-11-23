require 'test_helper'

class PurchasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @purchase = purchases(:one)
  end

  test "should get index" do
    get purchases_url
    assert_response :success
  end

  test "should get new" do
    get new_purchase_url
    assert_response :success
  end

  test "should create purchase" do
    assert_difference('Purchase.count') do
      post purchases_url, params: { purchase: { amount: @purchase.amount, date: @purchase.date, date_purchase: @purchase.date_purchase, invoice_cnpj: @purchase.invoice_cnpj, invoice_number: @purchase.invoice_number, product_id: @purchase.product_id, quantity: @purchase.quantity, total_quantity: @purchase.total_quantity, unitary_value: @purchase.unitary_value } }
    end

    assert_redirected_to purchase_url(Purchase.last)
  end

  test "should show purchase" do
    get purchase_url(@purchase)
    assert_response :success
  end

  test "should get edit" do
    get edit_purchase_url(@purchase)
    assert_response :success
  end

  test "should update purchase" do
    patch purchase_url(@purchase), params: { purchase: { amount: @purchase.amount, date: @purchase.date, date_purchase: @purchase.date_purchase, invoice_cnpj: @purchase.invoice_cnpj, invoice_number: @purchase.invoice_number, product_id: @purchase.product_id, quantity: @purchase.quantity, total_quantity: @purchase.total_quantity, unitary_value: @purchase.unitary_value } }
    assert_redirected_to purchase_url(@purchase)
  end

  test "should destroy purchase" do
    assert_difference('Purchase.count', -1) do
      delete purchase_url(@purchase)
    end

    assert_redirected_to purchases_url
  end
end
