class Discovery < ActiveRecord::Base
  attr_accessible :name

  belongs_to :explorer

  validates :name, presence: true
end
