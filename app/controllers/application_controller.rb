class ApplicationController < ActionController::Base
    before_action :authenticate_user!, :get_data
    
    
    def get_data
        if user_signed_in?
            @getFName = current_user.fname
            @getLName = current_user.lname
            @getEmail = current_user.email
            @getStreet = current_user.street
            @getState = current_user.state
            @getCity = current_user.city
            @getZip = current_user.zip_code
            @getPhoneNum = current_user.phone_number
        end
    end
end
