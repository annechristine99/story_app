class PromptsController < ApplicationController
  def index
    @prompts = Prompt.all
  end

  def new
    @prompt = Prompt.new
end

  def create
    @prompt = Prompt.new(prompt_params)
   if @prompt.save
    redirect_to @prompt
  else
    render 'new'
end
end




  def show
    @prompt = Prompt.find(params[:id])
  end

  private
    def prompt_params
      params.require(:prompt).permit(:title)
    end
  end

