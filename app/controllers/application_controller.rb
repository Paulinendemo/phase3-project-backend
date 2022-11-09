pclass ApplicationController < Sinatra::Base
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

  delete "/players/:id" do
    player = Player.find(params[:id]) 
    player.destroy
    players=Player.all
    players.to_json
  end

  delete "/teams/:id" do
    team = Team.find(params[:id]) 
    team.destroy
    teams=Team.all
    teams.to_json
  end

  patch "/teams/:id" do
    team = Team.find(params[:id])
    team.update(params)
    teams = Team.all
    teams.to_json
  end

  patch '/players/:id' do
    player = Player.find(params[:id])
    player.update(params)
    players = Player.all
    players.to_json
  end

  get "/top_goalscorers" do 
    players = Player.all.order(goals: :desc).limit(5)
    players.to_json
  end

  get "/top_assisters" do
    players = Player.all.order(assists: :desc).limit(5)
    players.to_json
  end

  
  get "/top_scoringteams" do
    teams = Team.all.sort_by{|team| team.goals_of_team}.reverse.first(5)
    teams.to_json(include: :players)
  end

end
