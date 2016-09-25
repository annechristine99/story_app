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

  def edit
    @prompt = Prompt.find(params[:id])
  end


  def update
    @prompt = Prompt.find(params[:id])
    if @prompt.update(params[:prompt].permit(:title))
    redirect_to @prompt
  else
    render 'edit'
  end
  end

  def destroy
    @prompt = Prompt.find(params[:id])
    @prompt.destroy

    redirect_to prompts_path
  end

  private
    def prompt_params
      params.require(:prompt).permit(:title)
    end
  end

