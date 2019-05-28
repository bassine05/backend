class Registrar < ApplicationRecord
  belongs_to :city
  has_many :facturations
  has_many :contacts
end
