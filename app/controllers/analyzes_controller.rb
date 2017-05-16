class AnalyzesController < ApplicationController
  def new

  end

  def create
    hash = params[:analyzes]
    api_key = hash['api_key']
    api_url = hash['api_url']
    response = RestClient.get('https://keywordsready.com/api/analyzes?url=' + api_url, api_key.present? ? {'api-key': api_key} : nil)
    @response = JSON.parse(response.body)
  end
end
