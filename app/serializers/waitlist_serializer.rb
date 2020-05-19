class WaitlistSerializer < ActiveModel::Serializer
  attributes *Waitlist.column_names
  
  has_many :customers
end 
