class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello
    if session[:name]
      "hi, #{name}"
      link_to controller: 'sessions', action: 'destroy'
    else
      link_to controller: 'sessions', action: 'new'
    end
  end
end