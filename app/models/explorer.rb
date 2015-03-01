class Explorer < ActiveRecord::Base
  attr_accessible :name, :email

  has_many :discoveries

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
