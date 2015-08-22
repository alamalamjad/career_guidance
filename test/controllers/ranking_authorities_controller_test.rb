require 'test_helper'

class RankingAuthoritiesControllerTest < ActionController::TestCase
  setup do
    @ranking_authority = ranking_authorities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ranking_authorities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ranking_authority" do
    assert_difference('RankingAuthority.count') do
      post :create, ranking_authority: { code: @ranking_authority.code, name: @ranking_authority.name }
    end

    assert_redirected_to ranking_authority_path(assigns(:ranking_authority))
  end

  test "should show ranking_authority" do
    get :show, id: @ranking_authority
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ranking_authority
    assert_response :success
  end

  test "should update ranking_authority" do
    patch :update, id: @ranking_authority, ranking_authority: { code: @ranking_authority.code, name: @ranking_authority.name }
    assert_redirected_to ranking_authority_path(assigns(:ranking_authority))
  end

  test "should destroy ranking_authority" do
    assert_difference('RankingAuthority.count', -1) do
      delete :destroy, id: @ranking_authority
    end

    assert_redirected_to ranking_authorities_path
  end
end
