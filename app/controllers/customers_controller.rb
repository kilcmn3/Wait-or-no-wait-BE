require 'date'

class CustomersController < ApplicationController
    def index
        customers = Customer.all
        render json: customers
    end

    ##TODO: why params is sending with duplicate data?
    def create
        customer = Customer.create(params_customer)
        wait_list = Waitlist.last
        cust_waitlist = CustomerWaitlist.new(actual_waitTime: 10, estimate_waitTime: 20, check_inTime: Time.now().to_s, party_size: params["wait_list"]["party_size"], waitlist_id: wait_list.id, customer_id: customer.id)
        cust_waitlist.save
        render json: cust_waitlist
    end

    private

    def params_customer
        params.require(:customer).permit(:name, :contact, :reservation)
    end
end
