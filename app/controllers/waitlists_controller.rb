class WaitlistsController < ApplicationController
    def index
        wait_List =  Waitlist.all
        render json: wait_List, include: 'customers'
    end

    ##TODO Owner params
    def create
        owner = Owner.last
        wait_list= Waitlist.find_by(owner_id: owner.id)
        if !wait_list
            wait_list = Waitlist.new(waitlist_date: params["waitlist"],  owner_id: owner.id)
            wait_list.save
        end
        render json: wait_list
    end

    # private

    # def params_waitList
    #     params.require(:waitlist).permit(:waitlist_date)
    # end
end
