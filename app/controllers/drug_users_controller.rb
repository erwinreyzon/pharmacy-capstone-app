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
  end

end
