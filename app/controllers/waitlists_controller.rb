class WaitlistsController < ApplicationController
    def index
        owner = Owner.find_by(id: params[:q] )
        wait_List =  owner.waitlists.find_by(waitlist_date: Date.today.to_s)
        if !wait_List
            wait_List = Waitlist.new(waitlist_date: Date.today.to_s, owner_id: owner.id)
            wait_List.save
        end

    
        render json: wait_List, include: "customers.customerWaitlists"
    end

    def search 
        wait_List = Waitlist.find_by(waitlist_date: params[:_json].to_s.split("T")[0])
        
        if wait_List 
            render json: wait_List, include: "customers.customerWaitlists"
        else
            remder json: {
                error: "Search list no found.",
                code: 400
            }, status: 400
        end
    end

end
