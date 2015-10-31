class BeerReviewsController < ApplicationController
  before_action :set_beer_review, only: [:edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /beer_reviews
  # GET /beer_reviews.json
  def index
    @beer_reviews = BeerReview.all
  end

  # GET /beer_reviews/new
  def new
    @beer_review = BeerReview.new
  end

  # GET /beer_reviews/1/edit
  def edit
  end

  # POST /beer_reviews
  # POST /beer_reviews.json
  def create
    @beer_review = BeerReview.new(beer_review_params)
    @beer_review.userid = current_user.id #current_user is a devise method

    respond_to do |format|
      if @beer_review.save
        format.html { redirect_to root_path, notice: 'Beer review was successfully created.' }
        format.json { render :show, status: :created, location: @beer_review }
      else
        format.html { render :new }
        format.json { render json: @beer_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beer_reviews/1
  # PATCH/PUT /beer_reviews/1.json
  def update
    respond_to do |format|
      if @beer_review.update(beer_review_params)
        format.html { redirect_to @beer_review, notice: 'Beer review was successfully updated.' }
        format.json { render :show, status: :ok, location: @beer_review }
      else
        format.html { render :edit }
        format.json { render json: @beer_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beer_reviews/1
  # DELETE /beer_reviews/1.json
  def destroy
    @beer_review.destroy
    respond_to do |format|
      format.html { redirect_to beer_reviews_url, notice: 'Beer review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beer_review
      @beer_review = BeerReview.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def beer_review_params
      params.require(:beer_review).permit(:rating, :comments)
    end
end
