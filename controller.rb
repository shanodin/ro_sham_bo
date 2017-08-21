require("sinatra")
require("sinatra/contrib/all") if development?
also_reload('./models/*')
require_relative("./models/game.rb")

get "/" do
  erb(:home)
end

get "/play/:gesture1/:gesture2" do
  game = Game.new(params[:gesture1], params[:gesture2])
  @game = game.play()
  erb( :play )
end
