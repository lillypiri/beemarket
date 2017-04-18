json.extract! listing, :id, :quantity, :vendor_id, :species, :created_at, :updated_at
json.url listing_url(listing, format: :json)
