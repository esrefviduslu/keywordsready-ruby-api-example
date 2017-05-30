class AnalyzesController < ApplicationController
  def new

  end

  def create
    hash        = params[:analyzes]
    url         = 'https://keywordsready.com/api/analyzes'
    if !verify_recaptcha
      redirect_to new_analyze_path
    else
      request = {'url': hash['url']}
      headers = {'api-key': hash['api_key']}
      response    = RestClient.post url, request, headers
      @response   = JSON.parse(response.body)
    end
  end
end