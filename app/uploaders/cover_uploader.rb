class CoverUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  storage :file
  
  def default_url
    url = "uploads/#{model.class.to_s.underscore}/#{mounted_as}/default/cover.jpg"
    url.prepend('/') unless url[0] == '/'
    url
  end
  
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
  
  def extension_white_list
    %w(jpg jpeg png)
  end
end
