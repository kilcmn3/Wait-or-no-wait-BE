class OwnersController < ApplicationController
    def login 
        owner = Owner.find_by(username: params[:email])
        if owner
            render json: owner
        else 
            # puts owner
            render json: {error: owner.erros.full_messmages}, status: 400
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

    def  params_owner
        params.require(:owner).permit(:username, :password, :restaurant_name, :restaurant_location, :restaurant_contact)
    end
end
