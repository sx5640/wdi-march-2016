class ArticlesController < ApplicationController
  before_action :ensure_logged_in, except: [:index, :show]
  before_action :load_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show
    @comment = Comment.new
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article, notice: 'Comment was successfully created'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @article.update(article_params)
      redirect_to root_url, notice: 'Article was successfully updated'
    else
      render :edit
    end
  end

  def destroy
    @article.destroy

    redirect_to root_url
  end

  private
  def article_params
    params.require(:article).permit(:title, :body)
  end

  def load_article
    @article = Article.find(params[:id])
  end
end
