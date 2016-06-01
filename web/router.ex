defmodule EmbergrepFast.Router do
  use EmbergrepFast.Web, :router

  scope "/", EmbergrepFast do
    get "/*catch_all", LightningController, :index
  end
end
