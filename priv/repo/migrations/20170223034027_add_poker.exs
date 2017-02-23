defmodule Poker.Repo.Migrations.AddPoker do
  use Ecto.Migration

  def change do
create table(:poker_game) do
      add :card, :string 
  end
end
