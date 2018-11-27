require 'test_helper'

class TypeStudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_student = type_students(:one)
  end

  test "should get index" do
    get type_students_url
    assert_response :success
  end

  test "should get new" do
    get new_type_student_url
    assert_response :success
  end

  test "should create type_student" do
    assert_difference('TypeStudent.count') do
      post type_students_url, params: { type_student: { name: @type_student.name } }
    end

    assert_redirected_to type_student_url(TypeStudent.last)
  end

  test "should show type_student" do
    get type_student_url(@type_student)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_student_url(@type_student)
    assert_response :success
  end

  test "should update type_student" do
    patch type_student_url(@type_student), params: { type_student: { name: @type_student.name } }
    assert_redirected_to type_student_url(@type_student)
  end

  test "should destroy type_student" do
    assert_difference('TypeStudent.count', -1) do
      delete type_student_url(@type_student)
    end

    assert_redirected_to type_students_url
  end
end
