require 'sinatra'
require 'json'

get '/' do
  "OK"
end

post '/chips' do
  content_type :json

  request.body.rewind
  json_data = JSON.parse(request.body.read)

  if json_data["potato"] == "chip"
    {"message" => "All your potato chips are belong to us."}.to_json
  else
    if json_data["potato"] != "" && !json_data["potato"].nil?
      {"message" => "Somebody set us up the chip."}.to_json
    else
      {"message" => "Take off every chip for great justice."}.to_json
    end
  end
end
