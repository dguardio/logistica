Rails.application.config.middleware.use OmniAuth::Builder do
	provider :twitter, ENV['cTuR8IaBWpab43n6uD6hb3DV1'], ENV['qZTHqECT5I0D1U9xLaJkKB1ycRw1OK300638Wjd9H2HKGC845x']
end