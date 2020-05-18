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
        cust_waitlist = CustomerWaitlist.new(actual_waitTime: 10, estimate_waitTime: 20, check_inTime: customer.created_at, party_size: params.wait_list.party_size, waitlist_id: waitlist.id, customer_id: customer.id)
        cust_waitlist.save
        byebug
        # cust_waitList = CustomerWaitlist.create(actual_waitTime: 0,estimate_waitTime: 5, check_inTime: time)
    end

    private

    def params_customer
        params.require(:customer).permit(:name,:contact)
    end
end
