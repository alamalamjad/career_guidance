require 'test_helper'

class CertAuthorityTypesControllerTest < ActionController::TestCase
  setup do
    @cert_authority_type = cert_authority_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cert_authority_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cert_authority_type" do
    assert_difference('CertAuthorityType.count') do
      post :create, cert_authority_type: { name: @cert_authority_type.name }
    end

    assert_redirected_to cert_authority_type_path(assigns(:cert_authority_type))
  end

  test "should show cert_authority_type" do
    get :show, id: @cert_authority_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cert_authority_type
    assert_response :success
  end

  test "should update cert_authority_type" do
    patch :update, id: @cert_authority_type, cert_authority_type: { name: @cert_authority_type.name }
    assert_redirected_to cert_authority_type_path(assigns(:cert_authority_type))
  end

  test "should destroy cert_authority_type" do
    assert_difference('CertAuthorityType.count', -1) do
      delete :destroy, id: @cert_authority_type
    end

    assert_redirected_to cert_authority_types_path
  end
end
