defmodule RetrochatWeb.PageController do
  use RetrochatWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
