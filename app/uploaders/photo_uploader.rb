class PhotoUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  include Cloudinary::CarrierWave unless Rails.env.test?

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :thumb do
    process resize_to_fit: [50, 50]
  end

  version :header_home do
    process resize_to_fit: [260, 200]
  end

  version :container_home do
    process resize_to_fit: [500, 300]
  end

  version :container_home_menor do
    process resize_to_fit: [255, 150]
  end

  version :details_principal do
    process resize_to_fit: [777, 441]
  end

  version :details_relations do
    process resize_to_fit: [214, 126]
  end

  def extension_whitelist
    %w(jpg jpeg gif png)
  end
end
