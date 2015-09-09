class User < ActiveRecord::Base
has_secure_password

# Associations ---------------------------------
has_many :love_notes
has_many :donations

# Validations -----------------------------------
validates :name, presence: true, uniqueness: true

end
