class HomeController < ApplicationController
  def index
      p=File.read('./lib/region/pcas-code.json')
      @p = JSON.parse(p)
      render json: { status: 200,data: @p }
  end
end
