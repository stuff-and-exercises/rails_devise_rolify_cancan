class User < ActiveRecord::Base
  resourcify
  rolify

  has_many :microposts, dependent: :destroy
  belongs_to :group

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
