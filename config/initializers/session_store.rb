if Rails.env === "production"
  Rails.application.config.session_store :cookie_store, key: '_interview_app',  domain: nil,
  secure: true,
  httponly: false,
  same_site: :none
else
  Rails.application.config.session_store :cookie_store, key: '_interview_app'
end