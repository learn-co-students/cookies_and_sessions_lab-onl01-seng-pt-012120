class ApplicationController < ActionController::Base

  helper_method :cart
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def cart
    if !!session[:cart]
      session[:cart]
    else
      session[:cart] = []
      session[:cart]
    end
  end
end
