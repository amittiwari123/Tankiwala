require 'test_helper'

class GasCompaniesControllerTest < ActionController::TestCase
  setup do
    @gas_company = gas_companies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gas_companies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gas_company" do
    assert_difference('GasCompany.count') do
      post :create, gas_company: { company_logo: @gas_company.company_logo, name: @gas_company.name }
    end

    assert_redirected_to gas_company_path(assigns(:gas_company))
  end

  test "should show gas_company" do
    get :show, id: @gas_company
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gas_company
    assert_response :success
  end

  test "should update gas_company" do
    patch :update, id: @gas_company, gas_company: { company_logo: @gas_company.company_logo, name: @gas_company.name }
    assert_redirected_to gas_company_path(assigns(:gas_company))
  end

  test "should destroy gas_company" do
    assert_difference('GasCompany.count', -1) do
      delete :destroy, id: @gas_company
    end

    assert_redirected_to gas_companies_path
  end
end
