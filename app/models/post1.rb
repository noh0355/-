class Post1 < ActiveRecord::Base
    mount_uploader :image, AvatarUploader
end
