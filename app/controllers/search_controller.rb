class SearchController < ApplicationController
  protect_from_forgery except: :search
  def search
    @location = params[:location]
    @date = params[:Date]
    gon.location = params[:location]
    dogsitters = User.all    #TODO: add area scope
    gon.dogsitter_positions = []
    dogsitters.each do |dogsitter|
      position = {latitude: dogsitter[:latitude], longitude: dogsitter[:longitude]}
      gon.dogsitter_positions.push(position)
    end

  end
end
