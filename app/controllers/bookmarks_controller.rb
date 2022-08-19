class BookmarksController < ApplicationController
  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new # not saved yet!
  end

  def create #ETAPE 2 réception des data du form
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(list_params)
    @bookmark.list = @list

    if @bookmark.save
      redirect_to list_path(@list)
    else
      render :new, status: :see_other
    end
  end

  def list_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end
end
