class ApplicationController < ActionController::Base
    before_action :authenticate_user!, :get_info
    
    
    def get_info
        if user_signed_in?
            @getUserInfo = User.where()
        end
    end
    
    
end