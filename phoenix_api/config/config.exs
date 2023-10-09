# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :phoenix_api,
  ecto_repos: [PhoenixApi.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :phoenix_api, PhoenixApiWeb.Endpoint,
  url: [host: "localhost"],
  render_errors: [
    formats: [json: PhoenixApiWeb.ErrorJSON],
    layout: false
  ],
  pubsub_server: PhoenixApi.PubSub,
  live_view: [signing_salt: "Vd2GPESt"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]


 #config guardian
 config :phoenix_api, PhoenixApiWeb.Auth.Guardian,
 issuer: "phoenix_api",
 secret_key: "Qyji1EO8f0COeOBfLk8qdOd7VqInUkiwpos+8GkKc+dy5TE9AHROixrGI9qU8LSi"


# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
