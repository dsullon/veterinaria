require 'test_helper'

class PetsControllerTest < ActionController::TestCase
  setup do
    @pet = pets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pet" do
    assert_difference('Pet.count') do
      post :create, pet: { breed_id: @pet.breed_id, datebirth: @pet.datebirth, family_id: @pet.family_id, gender: @pet.gender, height: @pet.height, name: @pet.name, otherDetails: @pet.otherDetails, string: @pet.string, user_id: @pet.user_id, weight: @pet.weight }
    end

    assert_redirected_to pet_path(assigns(:pet))
  end

  test "should show pet" do
    get :show, id: @pet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pet
    assert_response :success
  end

  test "should update pet" do
    patch :update, id: @pet, pet: { breed_id: @pet.breed_id, datebirth: @pet.datebirth, family_id: @pet.family_id, gender: @pet.gender, height: @pet.height, name: @pet.name, otherDetails: @pet.otherDetails, string: @pet.string, user_id: @pet.user_id, weight: @pet.weight }
    assert_redirected_to pet_path(assigns(:pet))
  end

  test "should destroy pet" do
    assert_difference('Pet.count', -1) do
      delete :destroy, id: @pet
    end

    assert_redirected_to pets_path
  end
end
