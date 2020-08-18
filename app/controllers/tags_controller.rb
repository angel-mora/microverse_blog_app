class TagsController < ApplicationController
    def index
        @tags = Tag.all
    end
    def destroy
        @tag = Tag.find(params[:id])
        @tag.destroy

        flash.notice = "Tag '#{@tag.name}' destroyed."

        redirect_to tags_path(@tags)
    end
end
