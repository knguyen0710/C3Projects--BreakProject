class LoveNotesController < ApplicationController

  def new
    @note = LoveNote.new
  end

  def create
    @note = LoveNote.create(lovenote_params)
    if @note.save
      redirect_to love_notes_path
    else
      render new_love_note_path
    end
  end

  def index
    @notes = LoveNote.all
  end

private

  def lovenote_params
    params.require(:love_note).permit(:note, :image, :remote_image_url, :user_id)
  end

end
