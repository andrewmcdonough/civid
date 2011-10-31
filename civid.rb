require 'sinatra'
require 'youtube_search'
require 'launchy'

PASS_KEYWORDS = "own goal"
FAIL_KEYWORDS = "great goal"
MAX_VIDEOS = 50


get '/fail' do
  open_random_video(FAIL_KEYWORDS)
end

get '/pass' do
  open_random_video(PASS_KEYWORDS)
end

def open_random_video(keywords)
  max_start_index = MAX_VIDEOS
  start_index = (rand * max_start_index).floor
  results = YoutubeSearch.search(keywords, 'start-index' => start_index)
  video_id = results[0]["video_id"]
  url = "http://www.youtube.com/v/#{video_id}?autoplay=1"
  Launchy.open(url)
end
