class HomeController < ApplicationController
  def index
    puts "here first"
    @gossips = Gossip.all
    puts "here!"
  end
end
