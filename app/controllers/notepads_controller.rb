class NotepadsController < ApplicationController

  def index
    @notepad = CreateNotepadService.new(params[:notepad_url]).call
    redirect_to notepad_path(notepad_url: @notepad.url)
  end

  def show
    @notepad = CreateNotepadService.new(params[:notepad_url]).call
  end
end
