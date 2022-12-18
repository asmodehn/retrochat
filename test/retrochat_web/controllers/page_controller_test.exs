defmodule RetrochatWeb.PageControllerTest do
  use RetrochatWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Join room!"
  end
end
