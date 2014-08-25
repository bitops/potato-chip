require 'sinatra'

get '/' do
  "OK"
end

post '/chips' do
  if params["potato"] == "chip"
    "All your potato chips are belong to us."
  else
    if params["potato"] != "" && !params["potato"].nil?
      "Somebody set us up the chip."
    else
      "Take off every chip for great justice."
    end
  end
end
