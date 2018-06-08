defmodule VampiriaWeb.Router do
  use VampiriaWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", VampiriaWeb do
    pipe_through :browser # Use the default browser stack
    get  "/", IndexController, :index

    get    "/login",  LoginController, :show
    post   "/login",  LoginController, :login
    delete "/logout", LoginController, :logout
  end
end
