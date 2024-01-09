class Document < ApplicationRecord
    mount_uploader :name, DocumentUploader

    validates :name, presence: true
    validates :custom_field, presence: true

    attr_accessor :custom_field
  end
  