class ClassificationsController < ApplicationController

  def index
    @classifications = Classification.all
    render :index
  end

  def show
    @classification = Classification.find_by(id: params[:id])
    render :show
  end

  def create
    @classification = Classification.new(
      name: params["name"],
      description: params["description"]
    )
    if @classification.save
      render :show
    else
      render json: {error: @drug.errors.full_messages}, status: 422
    end
  end

  def update
    @classification = Classification.find_by(id: params[:id])
    @classification.name = params["name"] || @classification.name
    @classification.description = params["description"] || @classification.description
    if @classification.save
      render :show
    else
      render json: {error: drug.errors.full_messages}, status: 422
    end
  end

end