class CreateNotepadService
  def initialize(url)
    if url
      Notepad.find_or_create_by(url: url)
    else
      Notepad.create(url: random_string)
    end
  end

  private

  def random_string
    (0..14).map { ('a'..'z').to_a[rand(25)] }.join
  end

end
