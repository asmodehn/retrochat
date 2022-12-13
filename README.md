# Retrochat
VideoConference with retro vibes - mostly a bunch of membrane experiments 

# How to use
  * Ensure you have installed requirements for membrane.

  If you use a version manager, such as `asdf`,
  note that the erlang and elixir version must be the version installed on your system,
  since this code involves some C-nodes and NIF for optimal video processing,
  they must play nice with the lower-level libraries.

  Reference environment for development : `Pop!_OS 22.04 LTS`

  * Install dependencies with `mix deps.get`
  * Install dependencies for assets `cd assets && npm install && cd ..`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).


# TODO list

- [ ] Fix CSRF bug
- [ ] Add Dockerfile from membrane tuto, in order to make build with system erlang safer (membrane has a bunch of native stuff)
- [ ] review frontend setup (upgraded phoenix have simpler requirements ?)
- [ ] add tests and CI to find problems on repo version

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
