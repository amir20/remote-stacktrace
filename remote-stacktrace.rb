require 'sinatra'


post '/' do
  File.open("stacktraces/#{Time.now}.txt", 'w') do |f|
    f.write params[:stacktrace]
  end
end