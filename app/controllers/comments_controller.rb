class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  def create
    @item = Item.find(params[:item_id])
    @comment = @item.comments.create(comment_params)
    redirect_to item_path(@item)     
  end

  private

    def comment_params
      params.require(:comment).permit(:item_id, :body)
    end
end
