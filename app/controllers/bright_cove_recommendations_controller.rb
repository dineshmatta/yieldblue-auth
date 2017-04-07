class BrightCoveRecommendationsController < ApplicationController
  before_action :set_bright_cove_recommendation, only: [:show, :edit, :update, :destroy]

  # GET /bright_cove_recommendations
  # GET /bright_cove_recommendations.json
  def index
    @bright_cove_recommendations = BrightCoveRecommendation.all
  end

  # GET /bright_cove_recommendations/1
  # GET /bright_cove_recommendations/1.json
  def show
  end

  # GET /bright_cove_recommendations/new
  def new
    @bright_cove_recommendation = BrightCoveRecommendation.new
  end

  # GET /bright_cove_recommendations/1/edit
  def edit
  end

  # POST /bright_cove_recommendations
  # POST /bright_cove_recommendations.json
  def create
    @bright_cove_recommendation = BrightCoveRecommendation.new(bright_cove_recommendation_params)

    respond_to do |format|
      if @bright_cove_recommendation.save
        format.html { redirect_to @bright_cove_recommendation, notice: 'Bright cove recommendation was successfully created.' }
        format.json { render :show, status: :created, location: @bright_cove_recommendation }
      else
        format.html { render :new }
        format.json { render json: @bright_cove_recommendation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bright_cove_recommendations/1
  # PATCH/PUT /bright_cove_recommendations/1.json
  def update
    respond_to do |format|
      if @bright_cove_recommendation.update(bright_cove_recommendation_params)
        format.html { redirect_to @bright_cove_recommendation, notice: 'Bright cove recommendation was successfully updated.' }
        format.json { render :show, status: :ok, location: @bright_cove_recommendation }
      else
        format.html { render :edit }
        format.json { render json: @bright_cove_recommendation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bright_cove_recommendations/1
  # DELETE /bright_cove_recommendations/1.json
  def destroy
    @bright_cove_recommendation.destroy
    respond_to do |format|
      format.html { redirect_to bright_cove_recommendations_url, notice: 'Bright cove recommendation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bright_cove_recommendation
      @bright_cove_recommendation = BrightCoveRecommendation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bright_cove_recommendation_params
      params.require(:bright_cove_recommendation).permit(:url, :keywords => [], :video_urls => [], :video_ids => [])
    end
end
