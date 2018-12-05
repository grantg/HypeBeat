class User < ApplicationRecord
    has_many :comments
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
    def self.get_comments(user_page_id)
        Comment.where(:users_id => user_page_id)
    end
    
    def self.get_name(user_name_params)
            Comment.where(:users_id => user_name_params).joins(:users).merge(User.where(:id => user_name_params))
    
    end
    
end
