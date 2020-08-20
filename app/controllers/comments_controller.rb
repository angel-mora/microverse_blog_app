class CommentsController < ApplicationController
    def create
        @comment = Comment.new(comment_params)
        @comment.article_id = params[:article_id]

        @comment.save

        # flash.notice = "Comment '#{@comment.title}' saved!"

        redirect_to article_path(@comment.article)
    end

    def comment_params
        params.require(:comment).permit(:author_name, :body)
    end

    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy

        flash.notice = "Comment by '#{comment.author_name}' destroyed."

        redirect_to articles_path(@articles)
    end

end
