defmodule DeriqArtWeb.Router do
  use DeriqArtWeb, :router

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

  scope "/", DeriqArtWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/gallery", GalleryController, :index
    get "/about", AboutController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", DeriqArtWeb do
  #   pipe_through :api
  # end
end
