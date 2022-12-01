class CatsController < ApplicationController
  def index
    @cat = Cat.all
  end

  def show
    @cat = Cat.find(params[:id])
  end

  def new
    @cat = Cat.new
  end

  def edit
  end

  def create
    @cat = Cat.create(name: params[:name], color: params[:color], age: params[:age], description: params[:description])

      if @cat.save
        redirect_to cats_path
    end
  end
end
