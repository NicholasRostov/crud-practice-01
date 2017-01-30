class MoisturizersController < ApplicationController
  
  def index
  @moist = Moisturizer.all
  render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    @moist = Moisturizer.new(name: params[:name], instructions: params[:instructions], hpf: params[:hpf])
    @moist.save
    redirect_to "/moist"
  end

  def show
    @moist = Moisturizer.new(id: params[:id])
    render "show.html.erb"
  end

  def edit
    @moist = Moisturizer.new(id: params[:id])
    render "edit.html.erb"
  end

  def update
    @moist = Moisturizer.find_by(id: params[:id])
    @moist.assign_attributes(name: params[:name], instructions: params[:instructions], hpf: params[:hpf])
    redirect_to "/moist/#{@moisturizer.id}"
  end

  def destroy
    @moist = Moisturizer.find_by(id: params[:id])
    @moist.destroy
    redirect_to "/contacts"
  end

end
