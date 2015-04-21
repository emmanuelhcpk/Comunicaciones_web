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
    loop do
      self.authentication_token = SecureRandom.hex
      return unless self.class.exists?(authentication_token: authentication_token)
    end
 
    save!
 
    authentication_token
  end


end
