defmodule Poker.GameController do
    use Poker.Web, :controller
    alias Poker.Game

	def new(conn,params) do
	  
	  changeset=Game.changeset(%Game{}, %{})
       render conn, "new.html", changeset: changeset
    end	

 end       