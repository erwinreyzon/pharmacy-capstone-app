class DrugsController < ApplicationController

  def index
    @drugs = Drug.all
    render :index
  end

  def show
    @drug = Drug.find_by(id: params[:id])
    render :show
  end

  def create
    @drug = Drug.new(
      name: params["name"],
      description: params["description"],
      classification_id: params["classification_id"],
      image_url: params["image_url"]
    )
    if @drug.save
      render :show
    else
      render json: {error: @drug.errors.full_messages}, status: 422
    end
  end

  def update
    @drug = Drug.find_by(id: params[:id])
    @drug.name = params["name"] || @drug.name
    @drug.description = params["description"] || @drug.description
    @drug.classification_id = params["classification_id"] || @drug.classification_id
    @drug.image_url = params["image_url"] || @drug.image_url
    if @drug.save
      render :show
    else
      render json: {error: @drug.errors.full_messages}, status: 422
    end
  end

  def destroy
    drug = Drug.find_by(id: params[:id])
    drug.destroy
    render json: {message: "Drug Destroyed"}
  end

end
