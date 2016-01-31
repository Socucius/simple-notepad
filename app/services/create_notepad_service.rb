class CreateNotepadService < NotepadService
  def call
    Notepad.find_or_create_by(url: url)
  end
end
