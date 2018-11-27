require "application_system_test_case"

class TypeStudentsTest < ApplicationSystemTestCase
  setup do
    @type_student = type_students(:one)
  end

  test "visiting the index" do
    visit type_students_url
    assert_selector "h1", text: "Type Students"
  end

  test "creating a Type student" do
    visit type_students_url
    click_on "New Type Student"

    fill_in "Name", with: @type_student.name
    click_on "Create Type student"

    assert_text "Type student was successfully created"
    click_on "Back"
  end

  test "updating a Type student" do
    visit type_students_url
    click_on "Edit", match: :first

    fill_in "Name", with: @type_student.name
    click_on "Update Type student"

    assert_text "Type student was successfully updated"
    click_on "Back"
  end

  test "destroying a Type student" do
    visit type_students_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Type student was successfully destroyed"
  end
end
