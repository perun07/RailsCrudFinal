class BlogPost < ApplicationRecord
    mount_uploader :picture, PictureUploader
    belongs_to :user
end
