defmodule VampiriaWeb.ChatController do
  use VampiriaWeb, :controller
  import SimpleAuth.AccessControl
  plug :authorize

  def map(conn, _params) do
    render conn, "map.html"
  end

end
