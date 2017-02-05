class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

# #Adding this per paperclip instruction
#   has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
#   validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
# #END
 has_many :tweets
 has_many :relationships
 has_many :friends, through: :relationships

validates :username, presence: true


  validates :name, uniqueness: true



end
