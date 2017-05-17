class AnalyzesController < ApplicationController
  def new

  end

  def create
    hash        = params[:analyzes]
    url         = 'https://keywordsready.com/api/analyzes'
    hash['url'].present? ?     request = {'url': hash['url']}         : request = nil
    hash['api_key'].present? ? headers = {'api-key': hash['api_key']} : headers = nil
    response    = RestClient.post url, request, headers
    @response   = JSON.parse(response.body)
  end
end