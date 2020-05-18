class WaitlistSerializer < ActiveModel::Serializer
    attributes :id, :waitlist_date, :created_at, :updated_at, :owner_id
    
    def customers
      ActiveModel::SerializableResource.new(object.customers,  each_serializer: CustomerSerializer)
    end
  end