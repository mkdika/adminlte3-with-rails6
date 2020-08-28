json.extract! person, :id, :first_name, :last_name, :birth_date, :gender, :height, :weight, :created_at, :updated_at
json.url person_url(person, format: :json)
