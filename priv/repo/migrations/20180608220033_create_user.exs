defmodule Vampiria.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add(:email, :string)
      add(:crypted_password, :string)
      add(:roles, {:array, :string})
      add(:attempts, :integer)
      add(:attempted_at, :naive_datetime, null: true)
      add(:active, :boolean)
      add(:name, :string)

      timestamps()
    end

    create(unique_index(:users, [:email]))
  end
end
