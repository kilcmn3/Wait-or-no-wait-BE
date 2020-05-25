class Waitlist < ApplicationRecord
  belongs_to :owner
  has_many :customerWaitlists
  has_many :customers, through: :customerWaitlists
end
