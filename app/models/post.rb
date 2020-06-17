class Post < ActiveRecord::Base
  validates_presence_of :title, :category, :content
  validates :title, uniqueness: true
  validates :content, length: {minimum: 100}
  validates :category, inclusion: {in: %w{Fiction Non-Fiction}}
end
