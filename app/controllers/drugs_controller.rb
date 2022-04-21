class DrugsController < ApplicationController

  def index
    drugs = Drug.all
    render json: drugs
  end

  def show
    drug = Drug.find_by(id: params[:id])
    render json: drug
  end

  def create
    drug = Drug.new(
      name: params["name"],
      description: params["description"],
      class_id: params["class_id"],
      image_url: params["image_url"]
    )
    if drug.save
      render json: drug
    else
      render json: {error: drug.error.full_messages}, status: 422
    end
  end

end
