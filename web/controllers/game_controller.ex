defmodule Poker.GameController do
    use Poker.Web, :controller
    alias Poker.Game

    def index(conn, _params) do
      player_name=Repo.all(Player_name)	
       render conn, "index.html", player_name: player_name
    end
     
	def new(conn,params) do
	  
	  changeset=Game.changeset(%Game{}, %{})
       render conn, "new.html", changeset: changeset
    end	
    def create(conn, %{"game"=> game}) do
      changeset=Game.changeset(%Game{}, game)

    case  Repo.insert(changeset) do
    	{:ok, post} ->IO.inspect(post)
    	{:error, changeset} ->
       render conn, "new.html", changeset: changeset
    end	

    end
   end    