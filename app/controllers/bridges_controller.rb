class BridgesController < ApplicationController
  include HTTParty
  attr_accessor :name, :isUp

  def index
    @response = HTTParty.get("https://api.multco.us/bridges#{ENV['bridges_api_key'] }").parsed_response
    respond_to do |format|
      format.json { render :json => JSON.parse(@response, :include => { :bridge => { :only => [:name, :isUp]}}) }
      format.html { render "index.html.erb" }
    end
  end


  def show
    @response = HTTParty.get("https://api.multco.us/bridges#{ENV['bridges_api_key'] }").parsed_response
    respond_to do |format|
      format.json { render :json => JSON.parse(@response, :include => { :bridge => { :only => [:name, :isUp]}}) }
      format.html { render "show.html.erb" }
    end
    @name = @response.find(params[:isUp]).to_s
    @bridge = @response.find(params[:name]).to_s
  end

end