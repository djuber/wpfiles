class CoreFile < ApplicationRecord
  belongs_to :wordpress
  validates :file_path, presence: true, uniqueness: true
  validates :size, presence: true
  validates :md5sum, presence: true
end
