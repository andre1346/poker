defmodule Poker.Game do
  use Poker.Web, :model


    schema "game" do
    	field :card, :string 
   end

   def changeset(struct, params \\ %{}) do
       struct
       |> cast(params, [:card])
       |> validate_require([:card])
   end

end