class Customer < ApplicationRecord
    has_many :customerWaitlists
    has_many :waitlists, through: :customerWaitlists
    accepts_nested_attributes_for :waitlists, allow_destroy: true
end
