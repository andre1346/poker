defmodule Poker.Game do
  use Poker.Web, :model 


    schema "game" do
    	field :player_name, :integer

   def changeset(struct, params \\ %{}) do
      struct
       |> cast(params, [:player_name])
       |> validate_required([:player_name])
   end

 end
end