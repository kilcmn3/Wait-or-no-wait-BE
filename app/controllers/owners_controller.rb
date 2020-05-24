class OwnersController < ApplicationController
    def login 
        owner = Owner.find_by(email: params[:owner][:email])
        render json: owner
    end

    def signup
        owner = Owner.create(params_owner)
        render json: owner
    end

    private

    def  params_owner
        params.require(:owner).permit(:username, :password, :restaurant_name,:restaurant_location,:restaurant_contact)
    end
end
