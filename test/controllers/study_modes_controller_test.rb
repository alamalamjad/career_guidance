require 'test_helper'

class StudyModesControllerTest < ActionController::TestCase
  setup do
    @study_mode = study_modes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:study_modes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create study_mode" do
    assert_difference('StudyMode.count') do
      post :create, study_mode: { name: @study_mode.name }
    end

    assert_redirected_to study_mode_path(assigns(:study_mode))
  end

  test "should show study_mode" do
    get :show, id: @study_mode
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @study_mode
    assert_response :success
  end

  test "should update study_mode" do
    patch :update, id: @study_mode, study_mode: { name: @study_mode.name }
    assert_redirected_to study_mode_path(assigns(:study_mode))
  end

  test "should destroy study_mode" do
    assert_difference('StudyMode.count', -1) do
      delete :destroy, id: @study_mode
    end

    assert_redirected_to study_modes_path
  end
end
