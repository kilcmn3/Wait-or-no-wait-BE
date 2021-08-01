class OwnersController < ApplicationController
  def login
    byebug
    owner = Owner.find_by(username: params[:email])
    if !owner
      render json: { status: 400 }
    else
      render json: owner
    end
  end

  def show
    owner = Owner.find_by(id: params[:id])
    render json: owner
  end

  def update
    owner = Owner.find_by(id: params[:id])

    owner.update(params_owner)

    render json: owner
  end

  def signup
    owner = Owner.create(params_owner)
  end

  private

  def params_owner
    params
      .require(:owner)
      .permit(
        :username,
        :password,
        :restaurant_name,
        :restaurant_location,
        :restaurant_contact
      )
  end
end
