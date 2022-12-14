defmodule RetrochatWeb.PageController do
  use RetrochatWeb, :controller

  def index(conn, params) do
    render(conn, "index.html",
      room_id: Map.get(params, "room_id"),
      csrf_token: get_csrf_token()
    )
  end

  def enter(conn, %{"room_name" => room_name, "display_name" => display_name}) do
    path =
      Routes.room_path(
        conn,
        :index,
        room_name,
        %{"display_name" => display_name}
      )

    redirect(conn, to: path)
  end

  def healthcheck(conn, _params) do
    conn
    |> send_resp(200, "")
  end
end
