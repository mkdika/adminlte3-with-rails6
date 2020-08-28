class Person < ApplicationRecord
  enum gender: { male: 'male', female: 'female' }
end
