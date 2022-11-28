class AuthController < ApplicationController
  protect_from_forgery with: :null_session

  def sign_up
    render json: { 'message' => "Hello world, you're at /sign-up" }
  end
end
