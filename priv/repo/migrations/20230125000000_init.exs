defmodule Office.Repo.Migrations.Initialize do
  use Ecto.Migration

  def change do
    create table("users") do
      add :name, :string, null: false
      add :password_hashed, :string
      add :email, :string
      timestamps()
    end

    create table("item_categories") do
      add :name, :string, null: false
      timestamps()
    end
    create unique_index("item_categories", [:name])

    create table("items") do
      add :name, :string, null: false
      add :category_id, references("item_categories"), null: false
      timestamps()
    end

    create table("item_rents") do
      add :item_id, references("items"), null: false
      add :rented_at, :naive_datetime, null: false
      add :rented_to, references("users"), null: false
      add :rent_accepted_by, references("users"), null: false
      add :returned_at, :naive_datetime
      add :return_accepted_by, references("users")
    end
  end
end
