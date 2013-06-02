class Admin < ActiveRecord::Base
  
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :name, :email, :password, :password_confirmation, :remember_me
  
  def to_s
    name
  end

end
