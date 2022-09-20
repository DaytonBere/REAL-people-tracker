json.extract! contact, :id, :userID, :phoneNumber, :linkedinLink, :email, :instagramLink, :created_at, :updated_at
json.url contact_url(contact, format: :json)
