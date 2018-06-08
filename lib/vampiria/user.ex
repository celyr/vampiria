defmodule Vampiria.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field(:email, :string)
    field(:password, :string, virtual: true)
    field(:crypted_password, :string)
    field(:roles, {:array, :string})
    field(:attempts, :integer, default: 0)
    field(:attempted_at, :naive_datetime)
    field(:active, :boolean, default: true)
    field(:name, :string)

    timestamps()
  end

  def changeset(model, params \\ :empty) do
    model
    |> cast(params, [:email, :crypted_password, :attempts, :attempted_at])
    |> validate_required([:email, :crypted_password, :attempts])
    |> unique_constraint(:email)
    |> validate_format(:email, ~r/@/)
    |> validate_length(:password, min: 5)
  end
end
