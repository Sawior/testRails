OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, 113257735540562, 'c5f8b7da8f99fd04a28c51bd4d2e2ba1'
end