class DrugUsersController < ApplicationController

  def index
    pp current_user
    drug_users = current_user.drug_users.where(status: true)
    render json: drug_users
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
    drug_user.save
    render json: drug_user
  end

  def update
    drug_user = DrugUser.find_by(id: params[:id])
      drug_user.prescribed_md = params[:prescribed_md] || drug_user.prescribed_md
      drug_user.quantity = params[:quantity] || drug_user.quantity
      drug_user.directions = params[:directions] || drug_user.directions
    drug_user.save
    render json: drug_user
  end

end
