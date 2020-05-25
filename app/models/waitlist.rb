class Waitlist < ApplicationRecord
  has_one  :owner
  has_many :customerWaitlists
  has_many :customers, through: :customerWaitlists
end
