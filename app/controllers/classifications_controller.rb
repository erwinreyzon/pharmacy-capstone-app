class ClassificationsController < ApplicationController

  def index
    @classifications = Classification.all
    render :index
  end

  def show
    classification = Classification.find_by(id: params[:id])
    render json: classification
  end

  def create
    classification = Classification.new(
      name: params["name"]
    )
    if classification.save
      render json: classification
    else
      render json: {error: drug.error.full_messages}, status: 422
    end
  end

  def update
    classification = Classification.find_by(id: params[:id])
    classification.name = params["name"] || classification.name
    if classification.save
      render json: classification
    else
      render json: {error: drug.error.full_messages}, status: 422
    end
  end

end