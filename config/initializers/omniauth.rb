Rails.application.config.middleware.use OmniAuth::Builder do
  provider :identity, :fields => [:email], :model => User
  provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET']
end