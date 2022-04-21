class DrugsController < ApplicationController

  def index
    drugs = Drug.all
    render json: drugs
  end

  def show
    drug = Drug.find_by(id: params[:id])
    render json: drug
  end

end
