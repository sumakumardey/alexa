class HomeController < ApplicationController
  def create
    response = AlexaRubykit::Response.new
    response.add_speech('Ruby is running ready!')
    response_data = response.build_response
    Rails.logger.error response_data
    render :json =>  response_data
  end
end
