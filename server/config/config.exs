# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :events_spa,
  ecto_repos: [EventsSpa.Repo]

# Configures the endpoint
config :events_spa, EventsSpaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "LzkAro/zHCE7FjS1xihtA4k52n6lW9XxGgUTveot7OkCKKa5VS0+iODnfXBaeGA9",
  render_errors: [view: EventsSpaWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: EventsSpa.PubSub,
  live_view: [signing_salt: "EmMpdvZG"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
