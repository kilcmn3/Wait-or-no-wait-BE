class WaitlistsController < ApplicationController
    def index
        # byebug
        wait_List =  Waitlist.last
        render json: wait_List, include: 'customers'
    end

    def create
        wait_List = Waitlist.create(params_waitList)
        render json: wait_List
    end

    private

    def params_waitList
        params.require(:waitlist).permit(:waitlist_date, :owner_id)
    end
end
