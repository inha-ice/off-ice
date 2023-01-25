defmodule Office.Model.ItemCategory do
  use Ecto.Schema
  import Ecto.Changeset

  schema "item_categories" do
    field :name, :string
    timestamps()
  end

  @doc false
  def changeset(item_category, attrs) do
    item_category
    |> cast(attrs, [:name])
    |> validate_required([:name])
    |> unique_constraint(:name)
  end
end
