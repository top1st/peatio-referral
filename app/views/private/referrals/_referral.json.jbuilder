json.extract! referral, :id, :member_id, :ref_type, :rewards, :created_at, :updated_at
json.url referral_url(referral, format: :json)
