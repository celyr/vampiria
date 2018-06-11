defmodule VampiriaWeb.LoginController do
  use VampiriaWeb, :controller
  use SimpleAuth.LoginController

  alias Vampiria.User

  def register(conn, _params) do
    changeset = User.changeset(%User{})
    render(conn, "register.html", changeset: changeset)
  end
end
