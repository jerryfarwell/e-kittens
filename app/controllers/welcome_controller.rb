class WelcomeController < ApplicationController
  def index
@welcome = Welcome.all
  end

  def show
  end

  def new
    @welcome = Welcome.new
  end

  def edit
    @welcome = Welcome.new
  end

  def create
    @welcome = Welcome.create(name: params[:name])

    if @welcome.save
      redirect_to welcome_path
    end
  end
end
