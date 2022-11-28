require 'json-schema'

class AuthController < ApplicationController
  protect_from_forgery with: :null_session

  def sign_up
    body = JSON.parse request.body.read


  end
end
