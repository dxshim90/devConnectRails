class Skill < ApplicationRecord
    has_many :profile_skills
    has_many :profiles, through: :profile_skills
    validates :name, presence: true
    validates :name, uniqueness: true
end
