class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  validates :username, uniqueness: true
  validates :name, presence: true

  has_many :articles
  has_one_attached :image

  


end



  #http://localhost:3000/users/confirmation?confirmation_token=Pmhap9q-ubmydSW2gcvd