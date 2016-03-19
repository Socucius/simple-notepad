class NotepadService
  attr_reader :url

  def initialize(url)
    url.nil? ? @url = random_string : @url = url
  end

  private

  def random_string
    (0..14).map { (('a'..'z').to_a + (1..9).to_a)[rand(35)] }.join
  end
end
