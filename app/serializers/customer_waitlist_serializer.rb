class CustomerWaitlistSerializer < ActiveModel::Serializer
  attributes *CustomerWaitlist.column_names

  belongs_to :customer
  belongs_to :waitlist
end
