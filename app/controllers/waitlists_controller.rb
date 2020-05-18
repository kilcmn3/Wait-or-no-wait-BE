class WaitlistsController < ApplicationController
    def index
        wait_List =  Waitlist.first
        render json: wait_List, include: 'customers'
    end
end
