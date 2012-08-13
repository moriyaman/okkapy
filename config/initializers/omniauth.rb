 Rails.application.config.middleware.use OmniAuth::Builder do 
  provider :facebook, '481522445209074', '647df99d1c1445e84aada24d9bf11c8b', :scope =>'email,user_photos,user_interests,user_likes,user_events,user_activities,user_relationships'
 end
