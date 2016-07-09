 class Wordpress < ApplicationRecord
  has_many :core_files
  validates :version, presence: true, uniqueness: true
end
