class GossipController < ApplicationController
  def show
    @gossip = Gossip.find(params[:id])
    puts params[:id]
  end
end
