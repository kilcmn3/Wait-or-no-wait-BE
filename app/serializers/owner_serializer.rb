class OwnerSerializer < ActiveModel::Serializer
  attributes *Owner.column_names

  has_many :Waitlists
end
