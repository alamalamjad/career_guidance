require 'test_helper'

class CertificationAuthoritiesControllerTest < ActionController::TestCase
  setup do
    @certification_authority = certification_authorities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:certification_authorities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create certification_authority" do
    assert_difference('CertificationAuthority.count') do
      post :create, certification_authority: { cert_authority_type_id: @certification_authority.cert_authority_type_id, city_id: @certification_authority.city_id, code: @certification_authority.code, name: @certification_authority.name }
    end

    assert_redirected_to certification_authority_path(assigns(:certification_authority))
  end

  test "should show certification_authority" do
    get :show, id: @certification_authority
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @certification_authority
    assert_response :success
  end

  test "should update certification_authority" do
    patch :update, id: @certification_authority, certification_authority: { cert_authority_type_id: @certification_authority.cert_authority_type_id, city_id: @certification_authority.city_id, code: @certification_authority.code, name: @certification_authority.name }
    assert_redirected_to certification_authority_path(assigns(:certification_authority))
  end

  test "should destroy certification_authority" do
    assert_difference('CertificationAuthority.count', -1) do
      delete :destroy, id: @certification_authority
    end

    assert_redirected_to certification_authorities_path
  end
end
