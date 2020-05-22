class CustomerWaitlistsController < ApplicationController
    def update
        customer_waitlist = CustomerWaitlist.find_by(customer_id: params[:id])
        customer_waitlist.update(paramse_update)
        render json: customer_waitlist
    end

    private

    def  paramse_update
        params.require(:customer_waitlist).permit(:is_waiting, :estimate_waitTime)
    end
end
