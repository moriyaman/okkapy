
 Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '481522445209074', '647df99d1c1445e84aada24d9bf11c8b', {:client_options => {:ssl => {:ca_path => "/etc/ssl/certs"}}}
 end
