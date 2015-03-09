class NotesController < ApplicationController

  def new
    @section = Section.find(params[:section_id])
	@board= @section.board
	@note= @section.notes.new
	@path = [@board,@section,@note]
  end
  
  def edit
    @note = Note.find(params[:id])
	@path= @note
  end

  def create
    @section = Section.find(params[:section_id])
    @note = @section.notes.new(note_params)
    if @note.save
      redirect_to board_path(@section.board)
    else
      render 'new'
    end

  end
 
  def update
    
    @note = Note.find(params[:id])
    if @note.update(note_params)
      redirect_to board_path(@note.section.board)
    else
      render 'new'
    end

  end

private
  def note_params
    params.require(:note).permit(:body)
  end
end
