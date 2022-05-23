require 'rails_helper'

RSpec.describe MovieService do
  it 'makes an API call' do
    VCR.use_cassette("movie_service_api_call") do
      MovieFacade.top_rated_movies
    end
    # wip = MovieFacade.top_rated_movies
  end
end
