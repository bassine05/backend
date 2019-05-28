class Contact < ApplicationRecord
    enum type: [:administrative, :technique, :financier]
end
