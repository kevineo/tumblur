class CommentsController < ApplicationController
	def index
		@comments = Comment.find(params[:post_id])
	end

	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.create(params[:comment].permit(:name, :body))

		redirect_to post_path(@post)
	end

	def show
		@post = Post.find(params[:post_id])
		@comment = Comment.find([:post_id])
	end

	def destroy
		@post = Post.find(params[:post_id])
		@comment = @post.comments.find(params[:post_id])
		@comment.destroy

		redirect_to post_path(@post)
	end


end
