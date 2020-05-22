class CustomerWaitlistsController < ApplicationController
    def update
        customer_waitlist = CustomerWaitlist.find(params[:id])
        if  params[:customer_waitlist][:estimate_waitTime] && params[:customer_waitlist][:estimate_waitTime] < 0
            customer_waitlist.update(estimate_waitTime: 0)
        else
            customer_waitlist.update(paramse_update)
        end
        render json: customer_waitlist
end
    
    private
    
    def  paramse_update
        params.require(:customer_waitlist).permit(:is_waiting, :estimate_waitTime, :is_texted)
    end
end
