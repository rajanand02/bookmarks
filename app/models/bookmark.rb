class Bookmark < ActiveRecord::Base
  belongs_to :user
  
  validates :user_id, presence: true
  validates :title, presence: true, length: {minimum: 8}
  validates :url, presence: true, format: {with: Regexp.new(URI::regexp(%w(http https)))}
end
