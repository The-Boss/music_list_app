class TopicsController < ApplicationController

	def index
    	@topics = Topic.paginate(page: params[:page])
	end

	def show
    	@topic = Topic.find(params[:id])
    	#@microposts = @user.microposts.paginate(page: params[:page])
  	end

	def new
    	@topic = Topic.new
  	end

  	def create
    	@topic = Topic.new(params[:topic])    # Not the final implementation!
    	if @topic.save
      		flash[:success] = "You created a new topic!"
      		redirect_to @topic
    	else
      		render 'new'
    	end
  	end


end
