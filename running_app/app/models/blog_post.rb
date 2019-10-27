class BlogPost < ApplicationRecord
    mount_uploader :picture, PictureUploader
end
