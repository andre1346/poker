defmodule Poker.Repo.Migrations.AddPokerTable do
  use Ecto.Migration

  def change do
  	create table(:poker_game) do 
  		add :player_amount, :integer

  		
  		timestamps() 
  	end
  

  end 
end
