class StoriesController < ApplicationController
 before_filter :authenticate_user!
def index
  @story = Story.all
end

def create
    @prompt = Prompt.find(params[:prompt_id])
    @story = @prompt.stories.create(params[:story].permit(:body))

    redirect_to prompt_path(@prompt)
end

def destroy
  @prompt = Prompt.find(params[:prompt_id])
  @story = @prompt.stories.find(params[:id])
  @story.destroy

  redirect_to prompt_path(@prompt)
end
end



