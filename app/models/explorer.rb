class Explorer < ActiveRecord::Base
  has_many :discoveries

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
