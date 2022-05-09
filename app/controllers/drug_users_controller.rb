class DrugUsersController < ApplicationController

  def index
    drug_user = DrugUser.all
    render json: drug_user
  end

end
