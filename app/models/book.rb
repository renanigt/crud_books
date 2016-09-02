class Book < ActiveRecord::Base
  validates :title, :resume, :author, :status, :category, presence: true
end
