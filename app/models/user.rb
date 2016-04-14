class User < ActiveRecord::Base
    def self.create_with_omniauth(auth)
    User.create!(
      :provider => auth["provider"],
      :uid => auth["uid"],
      :name => auth["info"]["name"])
    end
    def self.find_by_provider_and_uid(provider, uid)
        where(provider: provider, uid: uid).first
    end
end
