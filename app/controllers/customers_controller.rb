require 'date'

class CustomersController < ApplicationController
  def index
    customers = Customer.all
    render json: customers
  end

  ##TODO: why params is sending with duplicate data?
  ##What if reservation is later than today?
  def create
    customer = Customer.find_by(contact: params[:customer][:contact])
    customer = Customer.create(params_customer) if !customer

    wait_List = Waitlist.find_by(waitlist_date: Date.today.to_s)

    filterWaitlist =
      wait_List.customerWaitlists.select do |target|
        target[:is_waiting] == false
      end

    cust_waitlist =
      CustomerWaitlist.new(
        estimate_waitTime: params[:cust_waitlist][:estimate_waitTime],
        check_in_time: params[:cust_waitlist][:checkIn],
        party_size: params[:wait_list][:party_size],
        waitlist_id: wait_List.id,
        is_waiting: false,
        is_texted: false,
        customer_id: customer.id
      )
    cust_waitlist.save

    render json: wait_List, include: 'customers.customerWaitlists'
  end

  private

  def params_customer
    params.require(:customer).permit(:name, :contact, :reservation)
  end
end
