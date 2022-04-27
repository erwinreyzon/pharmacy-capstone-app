class ClassificationsController < ApplicationController

  def index
    classifications = Classification.all
    render json: classifications
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

end