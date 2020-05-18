class Waitlist < ApplicationRecord
  belongs_to :owner
  has_many :customerWaitlists
  has_many :customers, through: :customerWaitlists
  accepts_nested_attributes_for :customers, allow_destroy: true
end
