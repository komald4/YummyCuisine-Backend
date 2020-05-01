class Recipe < ApplicationRecord
    has_many: :users, through: :user_recipes
end
