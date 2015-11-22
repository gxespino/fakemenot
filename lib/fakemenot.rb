require "fakemenot/version"
require "yaml"

module Fakemenot
  include YAML

  # FAKEMENOT_CONFIG = YAML.load_file("#{RAILS_ROOT}/config/fakemenot_config.yml")[RAILS_ENV]

  def valid_email(email)
    response = get_response(email)
    response.body["isValid"]
  end

  def get_response(email)
    Unirest.get "https://pozzad-email-validator.p.mashape.com/emailvalidator/validateEmail/#{email}",
      headers:{
      "X-Mashape-Key" => ENV["FAKEMENOT_API_KEY"],
      "Accept" => "application/json"
    }
  end
end
