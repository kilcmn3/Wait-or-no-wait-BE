require 'date'

class CustomersController < ApplicationController
    def index
        customers = Customer.all
        render json: customers
    end

    ##TODO: why params is sending with duplicate data?
    ##What if reservation is later than today? 
    def create
        customer = Customer.create(params_customer)
        wait_List =  Waitlist.find_by(waitlist_date: Date.today.to_s)

        filterWaitlist = wait_List.customerWaitlists.select {|target| target[:is_waiting] == false}

        if filterWaitlist.length == 0 || filterWaitlist.length == 1
            total_wait = filterWaitlist.length + 3
        else 
            total_wait = filterWaitlist.length * 3
        end

        if customer[:reservation]
            time_checkin = params[:customer][:time]
        else
            time_checkin = Time.now().to_s
        end

        cust_waitlist = CustomerWaitlist.new( 
            estimate_waitTime: total_wait, 
            check_inTime: time_checkin, 
            party_size: params["wait_list"]["party_size"], 
            waitlist_id: wait_List.id, 
            is_waiting: false,
            is_texted: false,
            customer_id: customer.id)
        cust_waitlist.save
        
        render json: wait_List, include: "customers.customerWaitlists"
    end

    private

    def params_customer
        params.require(:customer).permit(:name, :contact, :reservation)
    end
end
