module Api
  class PeopleController < ApiController

    def search
      data = Person.where("lower(first_name) LIKE :name or lower(last_name) LIKE :name", name: "%#{params[:name]}%")
                   .where(gender: params[:gender] || 'male')
                   .where(activation: params[:activation] || true)
      render(json: data.to_json)
    end

  end
end