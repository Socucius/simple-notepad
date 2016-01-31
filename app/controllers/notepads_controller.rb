class NotepadsController < ApplicationController
  def show
    @notepad = CreateNotepadService.new(params[:notepad_url])
    redirect_to 
  end
end
