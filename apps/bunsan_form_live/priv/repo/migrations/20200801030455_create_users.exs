defmodule BunsanFormLive.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :pin, :string
      add :usd, :decimal
      add :email, :string
      add :btc, :decimal

      timestamps()
    end

  end
end
