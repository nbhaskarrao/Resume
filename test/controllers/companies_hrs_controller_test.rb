require 'test_helper'

class CompaniesHrsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @companies_hr = companies_hrs(:one)
  end

  test "should get index" do
    get companies_hrs_url
    assert_response :success
  end

  test "should get new" do
    get new_companies_hr_url
    assert_response :success
  end

  test "should create companies_hr" do
    assert_difference('CompaniesHr.count') do
      post companies_hrs_url, params: { companies_hr: {  } }
    end

    assert_redirected_to companies_hr_url(CompaniesHr.last)
  end

  test "should show companies_hr" do
    get companies_hr_url(@companies_hr)
    assert_response :success
  end

  test "should get edit" do
    get edit_companies_hr_url(@companies_hr)
    assert_response :success
  end

  test "should update companies_hr" do
    patch companies_hr_url(@companies_hr), params: { companies_hr: {  } }
    assert_redirected_to companies_hr_url(@companies_hr)
  end

  test "should destroy companies_hr" do
    assert_difference('CompaniesHr.count', -1) do
      delete companies_hr_url(@companies_hr)
    end

    assert_redirected_to companies_hrs_url
  end
end
