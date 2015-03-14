class Discovery < ActiveRecord::Base
  belongs_to :explorer 

  validates :name, presence: true, uniqueness: true
  validates :explorer, presence: true
end
