class SearchController < ApplicationController
  protect_from_forgery except: :search
  def search
    @location = params[:location]
    @date = params[:Date]
    gon.location = params[:location]
    dogsitters = User.all    #TODO: add area scope
    gon.dogsitters_info = []
    dogsitters.each do |dogsitter|
      info = {name: dogsitter[:name],
              latitude: dogsitter[:latitude],
              longitude: dogsitter[:longitude],
              address: dogsitter[:address1]
              }
      gon.dogsitters_info.push(info)
    end

  end
end
