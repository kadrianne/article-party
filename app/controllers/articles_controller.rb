class ArticlesController < ApplicationController
    def index
        articles = Article.all
        render json: articles, include: {author: {only: [:name, :age]}, magazine: {only: [:name, :category]}}, except: [:author_id, :magazine_id]
    end

    def show
        article = Article.find(params[:id])
        render json: article, include: {author: {only: [:name, :age]}, magazine: {only: [:name, :category]}}, except: [:author_id, :magazine_id]
    end

    def create
        author = Author.find(params[:author])
        magazine = Magazine.find(params[:magazine])
        article = Article.create(
            title: params[:title],
            magazine: magazine,
            author: author
        )
        render json: article
    end

    def update
        article = Article.find(params[:id])
        author = Author.find(params[:author])
        magazine = Magazine.find(params[:magazine])
        article.update(
            title: params[:title],
            magazine: magazine,
            author: author
        )
        render json: article
    end

    def destroy
        Article.find(params[:id]).destroy
        render json: {message: "Article deleted successfully."}
    end

end
