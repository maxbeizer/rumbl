# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

config :rumbl,
  ecto_repos: [Rumbl.Repo]

# Configures the endpoint
config :rumbl, Rumbl.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "Z1drq6GHxAJFazKN4TIRlYTDgQq9/EbDlukLSN3QueBPhIMBq4udmIsNLiYJ8sar",
  render_errors: [accepts: ~w(html json)],
  pubsub: [name: Rumbl.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# Configure phoenix generators
config :phoenix, :generators,
  migration: true,
  binary_id: false
