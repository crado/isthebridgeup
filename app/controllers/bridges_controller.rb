class BridgesController < ApplicationController
  include HTTParty

  def index
    @response = HTTParty.get("https://api.multco.us/bridges?access_token=cbodo17@gmail.com:e0a9f0af7dc76469272f354953db3d06").parsed_response
    respond_to do |format|
      format.json { render :json => JSON.parse(@result) }
      format.html { render "index.html.erb" }
    end
  end


  def show
    @is_it_up = @response.isUp(params[:name])
  end

end