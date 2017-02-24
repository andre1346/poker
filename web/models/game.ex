defmodule Poker.Game do
  use Poker.Web, :model 


    schema "game" do
    	field :player_amount, :integer
   end

   def changeset(struct, params \\ %{}) do
      struct
       |> cast(params, [:player_amount])
       |> validate_required([:player_amount])
   end

end