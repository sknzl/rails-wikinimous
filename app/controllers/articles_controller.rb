class ArticlesController < ApplicationController
    before_action :fetch_article, except: [:index, :new, :create]

  def index
    @articles = Article.all
  end

  def new
    @article = article.new
  end

  def create
    Article.create(article_params)
    redirect_to article_path
  end

  def show
  end

  def edit
  end

  def update
    @article.update(article_params)
    redirect_to article_path
  end

  def destroy
    @article.destroy
    redirect_to article_path
  end


private

  def article_params
    params.require(:article).permit(:title, :content)
  end

  def fetch_article
    @article = Article.find(params[:id])
  end

end
