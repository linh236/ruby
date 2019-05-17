class Micropost < ApplicationRecord
    belongs_to :user
    mount_uploader :image, PictureUploader
    
    validates:title, length:{maximum:100},uniqueness:true
    validates:content, length:{maximum:5000}

end
