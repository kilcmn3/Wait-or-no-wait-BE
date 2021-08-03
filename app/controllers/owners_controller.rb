class OwnersController < ApplicationController
  def login
    owner = Owner.find_by(username: params[:email])
    if !owner
      # Not Found EndPoint is good, but no data has been found
      render nothing: true, status: 404
    else
      render json: {status:{
        code: 200
      },
      owner: owner
    }
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
      if owner
        render json: {status:{
        code: 200
      },
      owner: owner
    }
      else
        render json: {status: {
          code: 500,
          message: "Information was not saved into DB"
        }}   
      end
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
