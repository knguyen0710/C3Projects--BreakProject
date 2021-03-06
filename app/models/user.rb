class User < ActiveRecord::Base
# Associations ---------------------------------
has_many :love_notes
has_many :donations

# Validations -----------------------------------
validates :name, presence: true, uniqueness: true

  def self.find_or_create_from_omniauth(auth_hash)
    uid = auth_hash["uid"]
    provider = auth_hash["provider"]

    user = User.where(uid: uid, provider: provider).first_or_initialize
    user.email = auth_hash["info"]["email"]

    if provider == "developer"
      user.name = auth_hash["info"]["name"]
    else
      user.name = auth_hash["info"]["nickname"]
    end

    return user.save ? user : nil
  end

end
