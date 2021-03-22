class Student < ApplicationRecord

    has_many :ducks

    validates :mod, numericality: {less_than: 6, greater_than: 0}

    validates :name, presence: :true

end
