class ApplicationController < ActionController::Base
  SAML_SETTINGS = "--- !ruby/object:OneLogin::RubySaml::Settings\nassertion_consumer_service_binding: urn:oasis:names:tc:SAML:2.0:bindings:HTTP-POST\nsingle_logout_service_binding: urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect\nidp_cert_fingerprint_algorithm: http://www.w3.org/2000/09/xmldsig#sha1\ncompress_request: true\ncompress_response: true\nsoft: true\ndouble_quote_xml_attribute_values: false\nsecurity:\n  :authn_requests_signed: true\n  :logout_requests_signed: true\n  :logout_responses_signed: true\n  :want_assertions_signed: true\n  :want_assertions_encrypted: false\n  :want_name_id: false\n  :metadata_signed: true\n  :embed_sign: false\n  :digest_method: http://www.w3.org/2000/09/xmldsig#sha1\n  :signature_method: http://www.w3.org/2000/09/xmldsig#rsa-sha1\n  :check_idp_cert_expiration: false\n  :check_sp_cert_expiration: false\nassertion_consumer_service_url: http://localhost:3003/sso/consume_saml\nname_identifier_format: urn:oasis:names:tc:SAML:1.1:nameid-format:emailAddress\nissuer: http://gateway.localhost:3005/saml/metadata\nauthn_context: ''\nidp_sso_target_url: http://gateway.localhost:3005/saml/auth\nidp_slo_target_url: http://gateway.localhost:3005/saml/logout\nidp_cert: |\n  -----BEGIN CERTIFICATE-----\n  MIIEyjCCA7KgAwIBAgIJANi731Ly5mR0MA0GCSqGSIb3DQEBCwUAMIGeMQswCQYD\n  VQQGEwJHQjEPMA0GA1UECBMGTG9uZG9uMQ8wDQYDVQQHEwZMb25kb24xIzAhBgNV\n  BAoTGkJpZyBTb2ZhIFRlY2hub2xvZ2llcyBMdGQuMR8wHQYDVQQDExZwbGF0Zm9y\n  bS5iaWdzb2ZhLmNvLnVrMScwJQYJKoZIhvcNAQkBFhhzeXNhZG1pbkBiaWdzb2Zh\n  dGVjaC5jb20wHhcNMTcwODA0MTUzMzQxWhcNMjcwODAyMTUzMzQxWjCBnjELMAkG\n  A1UEBhMCR0IxDzANBgNVBAgTBkxvbmRvbjEPMA0GA1UEBxMGTG9uZG9uMSMwIQYD\n  VQQKExpCaWcgU29mYSBUZWNobm9sb2dpZXMgTHRkLjEfMB0GA1UEAxMWcGxhdGZv\n  cm0uYmlnc29mYS5jby51azEnMCUGCSqGSIb3DQEJARYYc3lzYWRtaW5AYmlnc29m\n  YXRlY2guY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA/kp9yb/3\n  qEHPSEACfxpDBw0gQPPwpqthoETv5MprKoi1ZQGJuCebOeO1Yf1KE+iu70UsWLkE\n  19gyK6LVbugV9xTERBtJEqYw8uZwoQK4BdOOOFrJcppUvNC2kWeGu4+gKlG6nSyG\n  4IqU88ka4iZ6+xJ57TQ6z1Wk98js7CwX1Cvg1IWPNvPG9oJTIoas8jfBaX/9aPHI\n  MSdq9D2eeOdXAmfERhjqQy4OUC9P3aZjDtIKp5IOO3hYtV/2ncplhRoxE8V24aWC\n  dBrAfQUoXCybdl7CvyfOsx00IjXfDoTQU7IsFTQx05vVrKst6awnzcm54RHOyg3M\n  tlQUshwJpYI6WwIDAQABo4IBBzCCAQMwHQYDVR0OBBYEFHPd7ge9+AJ9PTMi1bK6\n  pb9e/FAzMIHTBgNVHSMEgcswgciAFHPd7ge9+AJ9PTMi1bK6pb9e/FAzoYGkpIGh\n  MIGeMQswCQYDVQQGEwJHQjEPMA0GA1UECBMGTG9uZG9uMQ8wDQYDVQQHEwZMb25k\n  b24xIzAhBgNVBAoTGkJpZyBTb2ZhIFRlY2hub2xvZ2llcyBMdGQuMR8wHQYDVQQD\n  ExZwbGF0Zm9ybS5iaWdzb2ZhLmNvLnVrMScwJQYJKoZIhvcNAQkBFhhzeXNhZG1p\n  bkBiaWdzb2ZhdGVjaC5jb22CCQDYu99S8uZkdDAMBgNVHRMEBTADAQH/MA0GCSqG\n  SIb3DQEBCwUAA4IBAQCq6hIpt3gH24gv8g1MiRM3oepQFEWjejeYiv7ZP5+EV/5O\n  AJrmVtny9svc6XiSohYRLboYGmEi8usGEC09YsQQqXuEaqhUXOulUGdxH56js5jp\n  19uuJ3lGiVyrDM7WKx8DHX6fWFy3Dpshk9f9Q9gZdvH7c8wqjN9Ryj9gq5j/dP6r\n  0Zg0mRaM783OMJZkEdFYvOMZZ1tfU7KoMaCQikaMQ17nPOhJQKmsdcbLFnaHrZwa\n  YmOpfIai4huJYwJyuLWqLUvWOTAKDHQUc+YWsdCYqE0RB8a4ViBI4OHQH7uwk3fg\n  9K/aMo3QLEj3Bs83WYzfDi0nNItswEkkYtHvk7R2\n  -----END CERTIFICATE-----\nidp_cert_fingerprint: 23:84:02:8F:7B:74:D1:5D:81:40:48:42:FC:23:65:90:A7:AD:F5:39\ncertificate: |\n  -----BEGIN CERTIFICATE-----\n  MIIEyjCCA7KgAwIBAgIJANi731Ly5mR0MA0GCSqGSIb3DQEBCwUAMIGeMQswCQYD\n  VQQGEwJHQjEPMA0GA1UECBMGTG9uZG9uMQ8wDQYDVQQHEwZMb25kb24xIzAhBgNV\n  BAoTGkJpZyBTb2ZhIFRlY2hub2xvZ2llcyBMdGQuMR8wHQYDVQQDExZwbGF0Zm9y\n  bS5iaWdzb2ZhLmNvLnVrMScwJQYJKoZIhvcNAQkBFhhzeXNhZG1pbkBiaWdzb2Zh\n  dGVjaC5jb20wHhcNMTcwODA0MTUzMzQxWhcNMjcwODAyMTUzMzQxWjCBnjELMAkG\n  A1UEBhMCR0IxDzANBgNVBAgTBkxvbmRvbjEPMA0GA1UEBxMGTG9uZG9uMSMwIQYD\n  VQQKExpCaWcgU29mYSBUZWNobm9sb2dpZXMgTHRkLjEfMB0GA1UEAxMWcGxhdGZv\n  cm0uYmlnc29mYS5jby51azEnMCUGCSqGSIb3DQEJARYYc3lzYWRtaW5AYmlnc29m\n  YXRlY2guY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA/kp9yb/3\n  qEHPSEACfxpDBw0gQPPwpqthoETv5MprKoi1ZQGJuCebOeO1Yf1KE+iu70UsWLkE\n  19gyK6LVbugV9xTERBtJEqYw8uZwoQK4BdOOOFrJcppUvNC2kWeGu4+gKlG6nSyG\n  4IqU88ka4iZ6+xJ57TQ6z1Wk98js7CwX1Cvg1IWPNvPG9oJTIoas8jfBaX/9aPHI\n  MSdq9D2eeOdXAmfERhjqQy4OUC9P3aZjDtIKp5IOO3hYtV/2ncplhRoxE8V24aWC\n  dBrAfQUoXCybdl7CvyfOsx00IjXfDoTQU7IsFTQx05vVrKst6awnzcm54RHOyg3M\n  tlQUshwJpYI6WwIDAQABo4IBBzCCAQMwHQYDVR0OBBYEFHPd7ge9+AJ9PTMi1bK6\n  pb9e/FAzMIHTBgNVHSMEgcswgciAFHPd7ge9+AJ9PTMi1bK6pb9e/FAzoYGkpIGh\n  MIGeMQswCQYDVQQGEwJHQjEPMA0GA1UECBMGTG9uZG9uMQ8wDQYDVQQHEwZMb25k\n  b24xIzAhBgNVBAoTGkJpZyBTb2ZhIFRlY2hub2xvZ2llcyBMdGQuMR8wHQYDVQQD\n  ExZwbGF0Zm9ybS5iaWdzb2ZhLmNvLnVrMScwJQYJKoZIhvcNAQkBFhhzeXNhZG1p\n  bkBiaWdzb2ZhdGVjaC5jb22CCQDYu99S8uZkdDAMBgNVHRMEBTADAQH/MA0GCSqG\n  SIb3DQEBCwUAA4IBAQCq6hIpt3gH24gv8g1MiRM3oepQFEWjejeYiv7ZP5+EV/5O\n  AJrmVtny9svc6XiSohYRLboYGmEi8usGEC09YsQQqXuEaqhUXOulUGdxH56js5jp\n  19uuJ3lGiVyrDM7WKx8DHX6fWFy3Dpshk9f9Q9gZdvH7c8wqjN9Ryj9gq5j/dP6r\n  0Zg0mRaM783OMJZkEdFYvOMZZ1tfU7KoMaCQikaMQ17nPOhJQKmsdcbLFnaHrZwa\n  YmOpfIai4huJYwJyuLWqLUvWOTAKDHQUc+YWsdCYqE0RB8a4ViBI4OHQH7uwk3fg\n  9K/aMo3QLEj3Bs83WYzfDi0nNItswEkkYtHvk7R2\n  -----END CERTIFICATE-----\nprivate_key: |\n  -----BEGIN RSA PRIVATE KEY-----\n  MIIEowIBAAKCAQEA/kp9yb/3qEHPSEACfxpDBw0gQPPwpqthoETv5MprKoi1ZQGJ\n  uCebOeO1Yf1KE+iu70UsWLkE19gyK6LVbugV9xTERBtJEqYw8uZwoQK4BdOOOFrJ\n  cppUvNC2kWeGu4+gKlG6nSyG4IqU88ka4iZ6+xJ57TQ6z1Wk98js7CwX1Cvg1IWP\n  NvPG9oJTIoas8jfBaX/9aPHIMSdq9D2eeOdXAmfERhjqQy4OUC9P3aZjDtIKp5IO\n  O3hYtV/2ncplhRoxE8V24aWCdBrAfQUoXCybdl7CvyfOsx00IjXfDoTQU7IsFTQx\n  05vVrKst6awnzcm54RHOyg3MtlQUshwJpYI6WwIDAQABAoIBAQDLu6zaJiZqtQc4\n  sKgPY2AOVzLfN1I4hpi6CmFVIeQIeO00Fq5bT8gq8khRUNi36LW3V+l20A2UTU+s\n  7FIqAGIQyp+QnXfHLEWNZpkYNxBvApcwiXRakFGR0XpkNtiYjzLYlRB5esI5Rm6e\n  fyI9zGy9mYj8RdtUYB7Cs0U21wDkaAZr/AIkbu6UcEIUPxEFeWemU6YgY9+uG6Yo\n  X4UWRvmWxNx47Wp6xCDKqstJAevgQrtPLbnAUIwh5C2GRI1h1smJzvip1KZEx/DG\n  9I2qFeClyI1SjncDB21KiLX+14yjO6nT1WwRk9DWKGy4nlF+h1D8kHvKCR161Xui\n  YZUY9xFpAoGBAP8y6LHo00eM8aSMGgSOM6H7Voilt5V+SwgO6dqssz6zfTPfyyR4\n  NwbidUhxOBMaskutX4KhZIUho2cuEygCg6qZzF9Aci1rEAaiJPBt0xaUq/hpYqT4\n  xau/NS1DdnSe0+kNDtdC7sZU0bxUVva8olVN/53MUxVOkEMUivb0DIr/AoGBAP8W\n  2k9vPwI+5S1tXKeqneHQhkZBL9oPuoO/QXR2v+WYGc6PFVdU6lhTF/ddT5PVuhfU\n  YfDXnrQ9Z2MwTdtvy/0XL+zaSCU2w4GZ/FUr4thHhyic4sY1+Ub6BwZ2yNrlUyIU\n  m0ioQ7KOj7nh7CXJJx9IrYJ+NccFnZegYPp1h1ylAoGAC+Zj02f38i4wVmvyCqRW\n  5AbEUjroBKCO/yEy5m+HLDVScUjOQDUa28dTkL020C0+gyjie0TrWwnmhLkxS3xS\n  h3IEhayLpnKHnMeS0WNNpI/qNPs1DlxLW2bfI+0xaN6/Iu7o8kC8waLS5OVJ6NeC\n  +ldYxBLzDNtM/tPGZx2aOCECgYBDoOxqCOVclA4weAELlqla9+zRbXDhUDAzw533\n  4Y/IsAWPhNG0oJesqQL+mueBGzXGIZGBx7iUsn7ZhjHuDnq3c9FJ6ykbbKRylL+Y\n  WRVAH96OfuGEiUS4c4svRIjFt+zNaUcuASZJjZA/SM1Ryz2rBpqxsQJS7IM2ctej\n  L0ue3QKBgD6qHdaBZ4ipgWCdLzamGFptQO2Bq8McgozTtOhsYFtqojFKhPiAokfY\n  /K0GO8t+pA8I3RrCIORNPHS2X72cL01QpUk518RiPqrzqom9XEh/GthhtcqjGrTt\n  qfSISCmWPUE8KWriwf0HwaVLG/vJsk5j0Z+RSTHNyzEkLNzI7+1u\n  -----END RSA PRIVATE KEY-----\nattribute_consuming_service: !ruby/object:OneLogin::RubySaml::AttributeService\n  index: '1'\n  attributes: []\n"

  before_action :authenticate_with_sso, except: %i[consume_saml]

  skip_before_action :verify_authenticity_token, only: %i[consume_saml]

  RSA_PUBLIC_STRING = "MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAr2r18kkLAvS8BKWpyasV3fnVjB0x1xMLuImalbmJmrBcUeYifOMfb7QghxXH5I8v+rxI4WNMbnt2XjVYDtV0HRJMR33qBSmEUHe8TRC4wpau1bgEGdRtOO+iAcnOQVIqtUCK85rhSaF4qjH7ZzZhmTkXQACH+WDptKucGmmIaotbMzmgZVYPqVSOMsuA8JdhZW4MFigZo/bxXHeINauipDYZI9JI22zsE2M6m4byJFYcNfjBS8Vj+cFG81I/g1b3OY7EIUEEltL6Qolse3VrEaCnX7F7TBKTeYjKoYCHSB1KOuNkO3TRBmtMj8vofUtmq8ICorjNSzTs/khKuyF3EMHdnaD/EntCxYU8kBtuf+Tl2k6QGaTa+0ADGARg3FAF4KjSl/S7NyErp7iOnvYy49B0t1JY6jZCdFrD6rs6KdkCwjrQfUgXtMyfKFUBk8BG1/Bh+tHFquUnFRNCuHJ6Roito/CN1/hsEiZdnVZJSGiDJ4SJWkqtYANdnMg3FBggHFXlAflFfwp27Nvlx27+IxTugG2UzOOa3Q8+NqcaAFwv1IVXa55sqBQEQ6yabZT8+tJArlWHuLd8M6g+Ac8aSZZccRJIVP8TZ3xQ0YSFQVyEhgwZmJ2cjv09nr+j/r1t39qA2SedcpaSra7++J8AjMJaAhn5DpUrPySR1taUwoECAwEAAQ=="
  RSA_PUBLIC = OpenSSL::PKey::RSA.new(Base64.decode64(RSA_PUBLIC_STRING))

  def current_user
    @current_user
  end

  def authenticate_with_sso
    if user_signed_in?
      @current_user = JWT.decode(cookies[:current_jwt], RSA_PUBLIC, true, algorithm: "RS256").first
    else
      redirect_to_idp_for_auth
    end
  rescue JWT::ExpiredSignature
    redirect_to_idp_for_auth
  end

  def consume_saml
    # Option 1:
    # Every micro app would have to have the SSO auth library and generate the JWT.
    # Rollbar.info("SSO Sign In", params.to_json)
    # authenticator = AuthenticationLibrary::SsoUser.new(params)
    # jwt_token = authenticator.jwt_token


    # Option 2:
    # JWT is generated in the IdP and return in the SAML assertion.
    # saml_settings = YAML.load(SAML_SETTINGS)
    # resp = OneLogin::RubySaml::Response.new(params[:SAMLResponse], settings: saml_settings, allowed_clock_drift: 600)

    # This is not validated. Needs to be changed.
    resp = OneLogin::RubySaml::Response.new(params[:SAMLResponse], allowed_clock_drift: 600).attributes

    cookies[:current_jwt] = resp.attributes["jwt"]

    redirect_to (params[:RelayState] || "/")
  end

  def redirect_to_idp_for_auth
    saml_settings = YAML.load(SAML_SETTINGS)
    login_request = OneLogin::RubySaml::Authrequest.new
    redirect_to login_request.create(saml_settings, RelayState: referer)
  end

  def referer
    URI.parse(request.url).to_s rescue "/"
  end

  def user_signed_in?
    cookies[:current_jwt].present?
  end
end
