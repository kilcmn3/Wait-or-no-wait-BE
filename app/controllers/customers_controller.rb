require 'date'

class CustomersController < ApplicationController
    def index
        customers = Customer.all
        render json: customers
    end

    ##TODO: why params is sending with duplicate data?
    def create
        customer = Customer.create(params_customer)
        wait_List =  Waitlist.find_by(waitlist_date: Date.today.to_s)
        totalTime = Customer.all.length * 3 
        cust_waitlist = CustomerWaitlist.new( 
            estimate_waitTime: totalTime == 0 ? 3 : totalTime, 
            check_inTime: Time.now().to_s, 
            party_size: params["wait_list"]["party_size"], 
            waitlist_id: wait_List.id, 
            is_waiting: false,
            is_texted: false,
            customer_id: customer.id)
        cust_waitlist.save
        render json: cust_waitlist
    end

    private

    def params_customer
        params.require(:customer).permit(:name, :contact, :reservation)
    end
end
