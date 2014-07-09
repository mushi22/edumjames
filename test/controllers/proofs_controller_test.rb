require 'test_helper'

class ProofsControllerTest < ActionController::TestCase
  setup do
    @proof = proofs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proofs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proof" do
    assert_difference('Proof.count') do
      post :create, proof: { content: @proof.content, name: @proof.name, video_link: @proof.video_link }
    end

    assert_redirected_to proof_path(assigns(:proof))
  end

  test "should show proof" do
    get :show, id: @proof
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proof
    assert_response :success
  end

  test "should update proof" do
    patch :update, id: @proof, proof: { content: @proof.content, name: @proof.name, video_link: @proof.video_link }
    assert_redirected_to proof_path(assigns(:proof))
  end

  test "should destroy proof" do
    assert_difference('Proof.count', -1) do
      delete :destroy, id: @proof
    end

    assert_redirected_to proofs_path
  end
end
