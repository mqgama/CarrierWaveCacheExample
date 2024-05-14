# app/uploaders/document_uploader.rb
class DocumentUploader < CarrierWave::Uploader::Base
  storage :file
  enable_processing false if Rails.env.test?

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # def cache_dir
  #   "#{Rails.root}/tmp/uploads"
  # end
end
