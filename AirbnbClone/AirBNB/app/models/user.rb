class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Carrierwave - associate image with model

  mount_uploader :avatar, AvatarUploader

  has_many :homes, dependent: :destroy
  has_many :bookings, dependent: :destroy, through: :homes
end
