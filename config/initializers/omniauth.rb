
 Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '481522445209074', '647df99d1c1445e84aada24d9bf11c8b', {:client_options => {:ssl => {:ca_path => "/etc/ssl/certs"}}},{:scope => "user_birthday", "user_about_me", "user_activities", "user_education_history", "user_events", "user_groups", "user_hometown", "user_interests", "user_likes", "user_location", "user_notes", "user_photos", "user_questions", "user_relationships", "user_relationship_details", "user_religion_politics", "user_status", "user_subscriptions", "user_videos", "user_website", "user_work_history", "email"}
 end
