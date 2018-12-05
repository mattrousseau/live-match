class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :avatar, PhotoUploader

  enum status: [ :pending, :confirmed, :archived ]

  has_many :venues, dependent: :destroy
  has_many :djs, dependent: :destroy
end
