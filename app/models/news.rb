class News < ApplicationRecord
  mount_base64_uploader :photo_capa, PhotoUploader
end
