class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def allTypes
  	@allTypes = Complement.distinct(:tipo)
  	puts @allTypes
  	puts '#####################'
  end
end
