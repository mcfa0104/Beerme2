require 'test_helper'

class BeerReviewsControllerTest < ActionController::TestCase
  setup do
    @beer_review = beer_reviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:beer_reviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create beer_review" do
    assert_difference('BeerReview.count') do
      post :create, beer_review: { comments: @beer_review.comments, rating: @beer_review.rating }
    end

    assert_redirected_to beer_review_path(assigns(:beer_review))
  end

  test "should show beer_review" do
    get :show, id: @beer_review
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @beer_review
    assert_response :success
  end

  test "should update beer_review" do
    patch :update, id: @beer_review, beer_review: { comments: @beer_review.comments, rating: @beer_review.rating }
    assert_redirected_to beer_review_path(assigns(:beer_review))
  end

  test "should destroy beer_review" do
    assert_difference('BeerReview.count', -1) do
      delete :destroy, id: @beer_review
    end

    assert_redirected_to beer_reviews_path
  end
end
