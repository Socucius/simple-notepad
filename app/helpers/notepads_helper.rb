module NotepadsHelper
  def share_url(notepad)
    root_url + "share/" + notepad.share_url
  end
end
