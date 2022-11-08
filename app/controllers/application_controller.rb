class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end
  get "/faith" do
    "hi am faith"
  end
  get "/teams" do
    teams = Team.all
   teams.to_json(include: :players)
  end

  get "/players" do
    players = Player.all
    players.to_json(include: :team)
  end

  post "/teams" do
    team = Team.create(params)
    teams = Team.all
    teams.to_json

  end
  post "/players" do
    player = Player.create(params)
    players = Player.all
    players.to_json

  end

  delete "/players/:id"
  player = Player.find(params[:id])
  player.destroy
  players=Player.all
  players.to_json


  end




end
