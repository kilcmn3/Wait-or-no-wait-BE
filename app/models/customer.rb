class Customer < ApplicationRecord
  has_many :customerWaitlists
  has_many :waitlists, through: :customerWaitlists
end
