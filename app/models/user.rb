class User < ApplicationRecord
    has_many: :recipes, through: :user_recipes
end
