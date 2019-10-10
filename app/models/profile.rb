class Profile < ApplicationRecord
    has_one_attached:image
    belongs_to :user
    has_many :posts
    has_many :profile_skills
    has_many :skills, through: :profile_skills

    validates :username, presence: true, allow_blank: false

    validates :image, content_type: /\Aimage\/.*\z/
    validates :image, dimension: { min: 200..100, max: 400..300 }
end
