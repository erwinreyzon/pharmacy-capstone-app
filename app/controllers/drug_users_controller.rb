class DrugUsersController < ApplicationController

  def index
    drug_user = DrugUser.all
    render json: drug_user
  end

  def create
    drug_user = DrugUser.new(
      user_id: current_user.id,
      drug_id: params[:drug_id],
      prescribed_md: params[:prescribed_md],
      quantity: params[:quantity],
      directions: params[:directions],
      status: true
    )
  end

end
