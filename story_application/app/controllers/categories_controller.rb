class CategoriesController < ApplicationController
   before_filter :authenticate_user!
  def flash_fiction
  end

def index

end

def show
  @category = Category.find_by(params[:id])
  @prompts = Prompt.where(:category_id => params[:id])
  @prompt = Prompt.new
end

end

