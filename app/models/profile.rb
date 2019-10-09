class Profile < ApplicationRecord
    belongs_to :user
    has_many :posts
    has_many :profile_skills
    has_many :skills, through: :profile_skills
end
