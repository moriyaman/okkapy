 Rails.application.config.middleware.use OmniAuth::Builder do 
  provider :facebook, '400394370022973', '5e0df0c31783021700d1cb8490a9b0c6', :scope =>'email,user_photos,user_interests,user_likes,user_events,user_activities,user_relationships'
 end
