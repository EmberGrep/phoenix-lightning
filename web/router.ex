defmodule EmbergrepFast.Router do
  use EmbergrepFast.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", EmbergrepFast do
    pipe_through :api
  end
end
