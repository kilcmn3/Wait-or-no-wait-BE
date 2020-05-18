require 'date'

class CustomersController < ApplicationController
    def index
        customers = Customer.all
        render json: customers
    end

    ##TODO: why params is sending with duplicate data?
    def create
        time = Time.now().to_s
        customer = Customer.create(name: params.name, contact: params.contact)
        # waitList = WaitList.create(waitlist_date: time)
        # cust_waitList = CustomerWaitlist.create(actual_waitTime: 0,estimate_waitTime: 5, check_inTime: time)
    end

    private

    def create_customer
        params.require(:customer).permit(:name,:contact)
    end
end
