class LoveNote < ActiveRecord::Base
# Associations ---------------------------------------
belongs_to :user

# Mounted Objects ------------------------------------
  mount_uploader :image, ImageUploader


# Validations -----------------------------------------
  validate :at_least_one_field, on: :save

  def at_least_one_field
    if self.name == nil && self.image == nil && self.remote_image_url == nil
      self.errors[:messages] << "Please leave a note for the happy couple."
    end
  end
end
