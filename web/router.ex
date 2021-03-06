defmodule Poker.Router do
  use Poker.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Poker do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/new/game", GameController, :new
    post "/player_name", GameController, :create
  end

  # Other scopes may use custom stacks.
  # scope "/api", Poker do
  #   pipe_through :api
  # end
end
