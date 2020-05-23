class WaitlistSerializer < ActiveModel::Serializer
  attributes *Waitlist.column_names
  
  has_many :customers
  has_many :customerWaitlists
end 
