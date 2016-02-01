class Notepad < ActiveRecord::Base
  validates :url, presence: true, uniqueness: true
  before_create :add_share_url

  private

  def add_share_url
    share_url = (0..5).map { (('A'..'Z').to_a + ('a'..'z').to_a)[rand(50)]}.join
    self.share_url = share_url
  end
end
