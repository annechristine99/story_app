class StoriesController < ApplicationController
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



