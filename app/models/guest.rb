class Guest < ActiveRecord::Base
  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |guest|
      guest.provider = auth.provider
      guest.uid = auth.uid
      guest.name = auth.info.name
      guest.oauth_token = auth.credentials.token
      guest.oauth_expires_at = Time.at(auth.credentials.expires_at)
      guest.save!
    end
  end
end