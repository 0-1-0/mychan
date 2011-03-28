class ApplicationController < ActionController::Base
  protect_from_forgery
  
  @sections = Section.all
end
