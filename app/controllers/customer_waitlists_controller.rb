class CustomerWaitlistsController < ApplicationController
  def update
    customer_waitlist = CustomerWaitlist.find(params[:id])
    wait_List = Waitlist.find_by(waitlist_date: Date.today.to_s)

    CustomerWaitlist.send_SMS if params[:customer_waitlist][:is_texted]

    customer_waitlist.update(paramse_update)

    render json: wait_List, include: 'customers.customerWaitlists'
  end

  private

  def paramse_update
    params
      .require(:customer_waitlist)
      .permit(:is_waiting, :estimate_waitTime, :is_texted)
  end
end
