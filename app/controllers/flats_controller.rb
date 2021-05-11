require 'open-uri'
require 'json'

class FlatsController < ApplicationController

  before_action :get_flats

  def index
    # get_flats
    # call the api and get the data
    # save them in a vatiable
  end

  def show
    # Get the ID
    @id = params[:id]
    # get_flats
    @flat = @flats.find { |flat| flat['id'] == @id.to_i }

    # call the API
  end

  private
  def get_flats
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(open(url).read)
  end

end
