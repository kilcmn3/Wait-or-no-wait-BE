class CustomerWaitlistsController < ApplicationController
    def index
        customer_waitlist = CustomerWaitlist.all 
        render json: customer_waitlist
    end
end
