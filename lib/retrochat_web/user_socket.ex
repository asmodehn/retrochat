defmodule RetrochatWeb.UserSocket do
  use Phoenix.Socket

  channel("room:*", RetrochatWeb.PeerChannel)

  # From liveview
  # Ref: https://github.com/phoenixframework/phoenix_live_view/blob/master/lib/phoenix_live_view/socket.ex#L89
  @impl Phoenix.Socket
  def connect(_params, %Phoenix.Socket{} = socket, connect_info) do
    {:ok, put_in(socket.private[:connect_info], connect_info)}
  end

  @impl true
  def id(_socket), do: nil
end
