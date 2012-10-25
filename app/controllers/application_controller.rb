class ApplicationController < ActionController::Base
  protect_from_forgery
  require coffee_script
  include SessionsHelper
end
