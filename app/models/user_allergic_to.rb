class UserAllergicTo < ApplicationRecord
    belongs_to :user 
    belongs_to :ingredient

    def self.most_allergic
        UserAllergicTo.group(:ingredient_id).order(ingredient_id: :desc)
    end
end
