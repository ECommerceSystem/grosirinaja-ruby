include Clearance::Controller
include CacheControl

class ApplicationController < ActionController::Base
    def authorized_level
        head 403 unless current_user.present? && current_user.level == "seller"
    end
  
    def validates_access_only methods
        return methods.include?(action.name.to_sym)
    end
end