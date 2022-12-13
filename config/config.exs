# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

# Configures the endpoint
config :retrochat, RetrochatWeb.Endpoint,
  url: [host: "localhost"],
  render_errors: [view: RetrochatWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Retrochat.PubSub,
  live_view: [signing_salt: "WKA+CceX"]

# configure tailwind
config :tailwind, version: "3.2.4", default: [
  args: ~w(
    --config=tailwind.config.js
    --input=css/app.css
    --output=../priv/static/assets/app.css
  ),
  cd: Path.expand("../assets", __DIR__)
]

# Configure esbuild (the version is required)
config :esbuild,
  version: "0.14.29",
  default: [
    args:
      ~w(src/index.ts --bundle --target=es2017 --outdir=../priv/static/assets/js/app.js --external:/fonts/* --external:/images/*),
    cd: Path.expand("../assets", __DIR__),
    env: %{"NODE_PATH" => Path.expand("../deps", __DIR__)}
  ]

# config :membrane_videoroom_demo, VideoRoomWeb.Endpoint, pubsub_server: VideoRoom.PubSub

# config :membrane_videoroom_demo, version: System.get_env("VERSION", "unknown")

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# config :logger,
#   compile_time_purge_matching: [
#     [level_lower_than: :info],
#     # Silence irrelevant warnings caused by resending handshake events
#     [module: Membrane.SRTP.Encryptor, function: "handle_event/4", level_lower_than: :error],
#     [module: MDNS.Client, level_lower_than: :error]
#   ]

# config :logger, :console, metadata: [:room, :peer]

# config :ex_libnice, impl: NIF


# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
