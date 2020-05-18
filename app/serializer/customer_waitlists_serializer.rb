class CustomerSerializer < ActiveModel::Serializer
    attributes :id, :waitlist_id, :customer_id, :actual_waitTime, :estimate_waitTime,:check_inTime,:party_size,:is_waiting,:is_texted
end