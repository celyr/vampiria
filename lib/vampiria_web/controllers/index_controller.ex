defmodule VampiriaWeb.IndexController do
  use VampiriaWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
