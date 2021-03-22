class Duck < ApplicationRecord
    
    belongs_to :student

    validates :description, presence: :true
    validates :name, presence: :true

end
