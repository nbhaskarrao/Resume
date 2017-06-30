require 'test_helper'

class ApplicantDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @applicant_detail = applicant_details(:one)
  end

  test "should get index" do
    get applicant_details_url
    assert_response :success
  end

  test "should get new" do
    get new_applicant_detail_url
    assert_response :success
  end

  test "should create applicant_detail" do
    assert_difference('ApplicantDetail.count') do
      post applicant_details_url, params: { applicant_detail: { address: @applicant_detail.address, applicant_name: @applicant_detail.applicant_name, experience: @applicant_detail.experience, mail_id: @applicant_detail.mail_id, phone_no: @applicant_detail.phone_no, qualification: @applicant_detail.qualification } }
    end

    assert_redirected_to applicant_detail_url(ApplicantDetail.last)
  end

  test "should show applicant_detail" do
    get applicant_detail_url(@applicant_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_applicant_detail_url(@applicant_detail)
    assert_response :success
  end

  test "should update applicant_detail" do
    patch applicant_detail_url(@applicant_detail), params: { applicant_detail: { address: @applicant_detail.address, applicant_name: @applicant_detail.applicant_name, experience: @applicant_detail.experience, mail_id: @applicant_detail.mail_id, phone_no: @applicant_detail.phone_no, qualification: @applicant_detail.qualification } }
    assert_redirected_to applicant_detail_url(@applicant_detail)
  end

  test "should destroy applicant_detail" do
    assert_difference('ApplicantDetail.count', -1) do
      delete applicant_detail_url(@applicant_detail)
    end

    assert_redirected_to applicant_details_url
  end
end
