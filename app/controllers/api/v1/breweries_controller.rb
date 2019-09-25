require 'json'

class Api::V1::BreweriesController < ApplicationController
  before_action :set_brewery, only: [:show, :update, :destroy]

  # GET /breweries
  def index
    @breweries = Brewery.all.order(:id)
    render json: Brewery.all.order(:id).to_json(:include => {:beers => {:only => :name}})
    #render json: @breweries
  end

  # GET /breweries/1
  def show
    if params['q'] == 'beerlist'
      brewery_beer_list = Beer.where(brewery: @brewery)
      render json: brewery_beer_list 
    else
      render json: @brewery
    end
  end

  # POST /breweries
  def create
    @brewery = Brewery.new(brewery_params)

    if @brewery.save
      render json: @brewery, status: :created, location: api_v1_brewery_url(@brewery)
    else
      render json: @brewery.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /breweries/1
  def update
    if @brewery.update(brewery_params)
      render json: @brewery
    else
      render json: @brewery.errors, status: :unprocessable_entity
    end
  end

  # DELETE /breweries/1
  def destroy
    @brewery.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brewery
      @brewery = Brewery.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def brewery_params
      params.require(:brewery).permit(:visited)
    end
end
