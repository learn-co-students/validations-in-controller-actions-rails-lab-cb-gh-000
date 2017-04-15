class Author < ActiveRecord::Base
  validates_presence_of :email, :name
  validates :email, uniqueness: true
end
