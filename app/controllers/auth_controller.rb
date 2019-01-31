class AuthController < ApplicationController
  before_action :only_for_anonymous # check if we know the user

  # Get username from params and save to session 
  def create
    session[:username] = params[:username]
    redirect_to root_path
  end
  
  private
# if a user had been to our chat before - send them to chat
  def only_for_anonymous  
    redirect_to root_path if session[:username]
  end
end
