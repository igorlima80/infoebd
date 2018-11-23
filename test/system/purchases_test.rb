require "application_system_test_case"

class PurchasesTest < ApplicationSystemTestCase
  setup do
    @purchase = purchases(:one)
  end

  test "visiting the index" do
    visit purchases_url
    assert_selector "h1", text: "Purchases"
  end

  test "creating a Purchase" do
    visit purchases_url
    click_on "New Purchase"

    fill_in "Amount", with: @purchase.amount
    fill_in "Date", with: @purchase.date
    fill_in "Date Purchase", with: @purchase.date_purchase
    fill_in "Invoice Cnpj", with: @purchase.invoice_cnpj
    fill_in "Invoice Number", with: @purchase.invoice_number
    fill_in "Product", with: @purchase.product_id
    fill_in "Quantity", with: @purchase.quantity
    fill_in "Total Quantity", with: @purchase.total_quantity
    fill_in "Unitary Value", with: @purchase.unitary_value
    click_on "Create Purchase"

    assert_text "Purchase was successfully created"
    click_on "Back"
  end

  test "updating a Purchase" do
    visit purchases_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @purchase.amount
    fill_in "Date", with: @purchase.date
    fill_in "Date Purchase", with: @purchase.date_purchase
    fill_in "Invoice Cnpj", with: @purchase.invoice_cnpj
    fill_in "Invoice Number", with: @purchase.invoice_number
    fill_in "Product", with: @purchase.product_id
    fill_in "Quantity", with: @purchase.quantity
    fill_in "Total Quantity", with: @purchase.total_quantity
    fill_in "Unitary Value", with: @purchase.unitary_value
    click_on "Update Purchase"

    assert_text "Purchase was successfully updated"
    click_on "Back"
  end

  test "destroying a Purchase" do
    visit purchases_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Purchase was successfully destroyed"
  end
end
