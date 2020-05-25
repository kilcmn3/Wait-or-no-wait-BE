class WaitlistSerializer < ActiveModel::Serializer
  attributes *Waitlist.column_names
  
  belongs_to :owner
  has_many :customers
  has_many :customerWaitlists
end 
