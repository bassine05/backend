class Domain < ApplicationRecord
  belongs_to :registrar
  has_and_belongs_to_many :contact
  belongs_to :extension
  has_and_belongs_to_many :operation
  has_many :servers
end
