class ApplicationController < ActionController::API

  helper_method :authenticate_token!, :current_user

  private
