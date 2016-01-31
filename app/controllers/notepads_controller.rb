class NotepadsController < ApplicationController

  def index
    @notepad = CreateNotepadService.new(params[:notepad_url]).call
    redirect_to pad_path(notepad_url: @notepad.url)
  end

  def show
    @notepad = CreateNotepadService.new(params[:notepad_url]).call
  end

  def update
    @notepad = Notepad.find(params[:id])
    @notepad.update_attribute(:body, params[:notepad][:body])
    respond_to do |format|
      format.html { redirect_to pad_path(notepad_url: @notepad.url) }
    end
  end



end
