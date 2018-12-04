class User < ApplicationRecord
    has_many :comments
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
    def self.get_comments(user_page_id)
            Comment.where(:sent_to => user_page_id)
    end
    
end
