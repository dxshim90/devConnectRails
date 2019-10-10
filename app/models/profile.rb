class Profile < ApplicationRecord
    has_one_attached:image
    belongs_to :user
    has_many :posts
    has_many :profile_skills
    has_many :skills, through: :profile_skills

    validates :image, content_type: /\Aimage\/.*\z/
    validates :image, dimension: { min: 200..100, max: 400..200 }
end
