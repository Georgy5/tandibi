class Api::V1::PlacesController < ApplicationController
  def index
    keyword = params.fetch(:keyword)
    lat = params.fetch(:lat)
    lng = params.fetch(:lng)
    Place::Crawler.call(keyword, lat: lat, lng: lng)
    render json: Place::Finder.call(keyword, lat: lat, lng: lng)
  end
end
