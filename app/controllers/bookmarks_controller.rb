class BookmarksController < ApplicationController
  before_action :set_bookmark, only: [:show, :edit, :update, :destroy]


  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end


  def create
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list
    @bookmark.save
    redirect_to list_path(@list)
  end

  def destroy
    @bookmark.destroy
    redirect_to list_path(@bookmark.list), status: :see_other
  end

private

  def set_bookmark
    @bookmark = Bookmark.find(params[:id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end
end