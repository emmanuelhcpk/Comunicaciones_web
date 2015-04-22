class Usuario < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 validates :nickname, presence: true

#asociations
has_many :logros
has_many :retos, through: :logros


 def generate_authentication_token
    
      self.authentication_token = SecureRandom.hex
     
 
    save!
 
    authentication_token
  end


end
