require 'test_helper'

class ComplementsControllerTest < ActionController::TestCase

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:complements)
  end

  setup do
    @complement = complements(:one)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create complement" do
    assert_difference('Complement.count') do
      post :create, complement: { coments: @complement.coments, grouping: @complement.grouping, inf: @complement.inf, nome: @complement.nome, tipo: @complement.tipo }
    end

    assert_redirected_to complement_path(assigns(:complement))
  end

  test "should show complement" do
    get :show, id: @complement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @complement
    assert_response :success
  end

  test "should update complement" do
    patch :update, id: @complement, complement: { coments: @complement.coments, grouping: @complement.grouping, inf: @complement.inf, nome: @complement.nome, tipo: @complement.tipo }
    assert_redirected_to complement_path(assigns(:complement))
  end

  test "should destroy complement" do
    assert_difference('Complement.count', -1) do
      delete :destroy, id: @complement
    end

    assert_redirected_to complements_path
  end
end
