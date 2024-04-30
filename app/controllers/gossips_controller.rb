class GossipsController < ApplicationController

  def index
    puts "here first"
    @gossips = Gossip.all
    puts "here!"
  end

  def show
    @gossip = Gossip.find(params[:id])
    puts params[:id]
  end
  
  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(gossip_params)

    if @gossip.save
      redirect_to @gossip, notice: 'Gossip créé avec succès!'
    else
      puts "*" * 120
      puts "ça a merdé"
      puts "*" * 120
      render :new
    end
  end

  private

  def gossip_params
    params.require(:gossip).permit(:title, :description, :user_id)
  end
end
