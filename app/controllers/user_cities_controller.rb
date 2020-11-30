class UserCitiesController < ApplicationController
  before_action :set_user_city, only: [:show, :update, :destroy]

  # GET /user_cities
  def index
    @user_cities = UserCity.all

    render json: @user_cities
  end

  # GET /user_cities/1
  def show
    render json: @user_city
  end

  # POST /user_cities
  def create
    @user_city = UserCity.new(user_city_params)

    if @user_city.save
      render json: @user_city, status: :created, location: @user_city
    else
      render json: @user_city.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_cities/1
  def update
    if @user_city.update(user_city_params)
      render json: @user_city
    else
      render json: @user_city.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_cities/1
  def destroy
    @user_city.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_city
      @user_city = UserCity.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_city_params
      params.require(:user_city).permit(:user_id, :city_id, :want_texts)
    end
end
