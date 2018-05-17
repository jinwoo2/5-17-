class CommentsController < ApplicationController
    def create
        params.permit!
        @article = Article.find(params[:article_id])
        @comment = @article.comments.new(params[:comment])
        
        @comment.save
        redirect_to article_path(@article)
    end
    
    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
        redirect_to comment_path(@comment)
    end
    
end
