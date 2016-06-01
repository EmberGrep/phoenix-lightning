defmodule EmbergrepFast.LightningController do
  use EmbergrepFast.Web, :controller
  import Exredis

  def index(conn, _params) do
    {:ok, client} = Exredis.start_link

    result = client |> Exredis.query ["GET", "embergrep-site:index:default"]

    conn
    |> html(result)
  end
end
