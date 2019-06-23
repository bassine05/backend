class Contact < ApplicationRecord
    belongs_to :registrar
    enum type: [:administrative, :technique, :financier, :NOC, :abuse]
end
