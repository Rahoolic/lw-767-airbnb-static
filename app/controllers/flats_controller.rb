require "open-uri"

class FlatsController < ApplicationController
  before_action :find_flats
  # before_action :find_flats, only: [:index, :show]
  # before_action :find_flats, except: [:third_action]

  def index

  end

  def show
    # extract data from api

    # choose from the array the specific flat
    @flat = @flats.find { |flat| flat['id'] == params['id'].to_i }
  end

  # def third_action
  # end

  private

  def find_flats
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(open(url).read)
  end
end
