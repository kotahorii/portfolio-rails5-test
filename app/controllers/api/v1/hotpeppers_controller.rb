class Api::V1::HotpeppersController < ApplicationController
  require 'httpclient'

  def index
    base_url = "#{ENV['SECRET_KEY']}" + params[:key]
    client = HTTPClient.new()
    response = client.get(base_url)
    json = JSON.parse(response.body)
    puts response.status
    puts response.body
    render json: json
  end
end