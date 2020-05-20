class CustomerSerializer < ActiveModel::Serializer
  attributes *Customer.column_names

  has_many :customerWaitlists
end
