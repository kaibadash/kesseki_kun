# frozen_string_literal: true

class UserRepository < Hanami::Repository
  def find_or_create_by_auth0_token(token)
    prof = auth0_profile(token)
    user = find(auth0_id: prof[:sub])
    if user.nil?
      create(auth0_id: prof[:sub],
                    name: prof[:nickname],
                    icon: prof[:picture])
    else
      update(auth0_id: prof[:sub],
                    name: prof[:nickname],
                    icon: prof[:picture])
    end
  end
  
  private 
  
  def auth0_profile(token)
    connection = Faraday.new(url: "https://kessekikun.auth0.com") do |builder|
      builder.request :url_encoded
      builder.use FaradayMiddleware::ParseJson, content_type: /\bjson$/
      builder.adapter :net_http
    end

    res = connection.get do |req|
      req.url "/userinfo"
      req.headers["Content-Type"] = "application/json"
      req.headers["Authorization"] = "Bearer #{token}"
    end
    Hanami::Utils::Hash.deep_symbolize(res.body)
  end
end
