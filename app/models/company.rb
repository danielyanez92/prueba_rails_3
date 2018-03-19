class Company < ApplicationRecord
  has_many :complains, dependent: :destroy
end
