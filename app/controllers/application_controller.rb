class ApplicationController < ActionController::Base
    before_action :authenticate_user!, :get_info
    
    
    def get_info
        if user_signed_in?
            @getUserInfo = Comment.where(:sent_to => 2).joins(:users).merge(User.where(:id=>2))
        end
    end
    
    
end