require "jwt"

module JsonWebToken
  extend ActiveSupport::Concern

  def jwt_encode(payload, exp = 7.days.from_now)
    payload[:exp] = exp.to_i
    JWT.encode(payload, ENV["AUTH_SECRET"])
  end
end
