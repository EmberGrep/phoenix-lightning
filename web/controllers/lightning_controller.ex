defmodule EmbergrepFast.LightningController do
  use Plug.Builder
  plug Plug.Static,
    at: "/",
    from: "./assets"
  plug :not_found

  import Exredis
  import Phoenix.Controller


  def not_found(conn, _) do
    {:ok, client} = Exredis.start_link

    result = client
            |> Exredis.query(["GET", "embergrep-site:index:default"])

    html(conn, result)
  end
end
