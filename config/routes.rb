Rails.application.routes.draw do
  get "/" => "main#index"
  get "/data_reports" => "data_reports#index"
  get "/:project_uid/settings" => "project_settings#show"

  # get "jwt/authentication" => "jwt#jwt_authentication"
  # get "sso/sign_in_with_saml" => "sso#sign_in_with_saml"
  post "sso/consume_saml" => "application#consume_saml"
  # get "sso/sign_out_user" => "sso#sign_out_user"
  # post "sso/log_out" => "sso#log_out"
  # get "sso/metadata" => "sso#metadata"
  # get "sso/sign_in_as" => "sso#sign_in_as"
end
