class CustomerSerializer < ActiveModel::Serializer
    attributes :id, :name, :contact, :updated_at, :updated_at
    
    def waitlists
      ActiveModel::SerializableResource.new(object.waitlists,  each_serializer: WaitlistSerializer)
    end
  end