class Favorite < ApplicationRecord
    
    belongs_to :user_params
    belongs_to :post_image
    
end
