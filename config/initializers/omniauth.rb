Rails.application.config.middleware.use OmniAuth::Builder do
  provider :strava, "74850", "bc2594c7a46719cd15a5272faa553a97d7e3b287", scope: 'activity:write'
end
