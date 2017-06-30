require 'test_helper'

class StudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get students_url
    assert_response :success
  end

  test "should get new" do
    get new_student_url
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post students_url, params: { student: { address: @student.address, experience: @student.experience, location: @student.location, mail_id: @student.mail_id, name: @student.name, phone_no: @student.phone_no, project_description: @student.project_description, project_name: @student.project_name, qualification: @student.qualification, technology: @student.technology } }
    end

    assert_redirected_to student_url(Student.last)
  end

  test "should show student" do
    get student_url(@student)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_url(@student)
    assert_response :success
  end

  test "should update student" do
    patch student_url(@student), params: { student: { address: @student.address, experience: @student.experience, location: @student.location, mail_id: @student.mail_id, name: @student.name, phone_no: @student.phone_no, project_description: @student.project_description, project_name: @student.project_name, qualification: @student.qualification, technology: @student.technology } }
    assert_redirected_to student_url(@student)
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete student_url(@student)
    end

    assert_redirected_to students_url
  end
end
