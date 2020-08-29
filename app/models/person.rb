class Person < ApplicationRecord
  enum gender: { male: 'male', female: 'female' }

  validates :first_name, presence: true,
                   length: { maximum: 50 }
  validates :last_name, presence: true,
                   length: { maximum: 50 }
  validates :birth_date, :height, :weight, presence: true

end
