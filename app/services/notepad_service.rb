class NotepadService
  attr_reader :url

  def initialize(url)
    url.nil? ? @url = random_string : @url = url
  end

  private

  def random_string
    (0..14).map { ('a'..'z').to_a[rand(25)] }.join
  end

end
