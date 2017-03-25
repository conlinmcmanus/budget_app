class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  @@monthly_budget = ' '
end
