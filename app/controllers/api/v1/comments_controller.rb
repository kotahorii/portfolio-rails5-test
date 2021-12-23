class Api::V1::CommentsController < ApplicationController
  def index
    comments = Comment.all.order(created_at: 'DESC')
    render json: comments
  end

  def create
    comment = Comment.new(comment_params)
    comment.user_id = current_api_v1_user.id
    if comment.save
      render json: comment
    else
      render json: { data: '作成に失敗しました'}
    end
  end

  private

  def comment_params
    params.permit(:comment, :post_id)
  end
end
