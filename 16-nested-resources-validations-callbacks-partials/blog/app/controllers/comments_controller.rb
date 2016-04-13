class CommentsController < ApplicationController
  before_action :ensure_logged_in

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.build(comment_params)

    # @comment = Comment.new
    # @comment.article = @article

    @comment.user = current_user

    if @comment.save
      redirect_to article_path(@article)
    else
      render 'articles/show'
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
