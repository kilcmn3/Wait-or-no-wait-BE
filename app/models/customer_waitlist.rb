class CustomerWaitlist < ApplicationRecord
  belongs_to :waitlist
  belongs_to :customer
end
