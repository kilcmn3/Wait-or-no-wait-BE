class OwnerSerializer < ActiveModel::Serializer
  attributes *Owner.column_names

  has_many :waitlists
end
