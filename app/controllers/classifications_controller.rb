class ClassificationsController < ApplicationController

  def index
    classifications = Classification.all
    render json: classifications
  end

  def show
    classification = Classification.find_by(id: params[:id])
    render json: classification
  end

end
