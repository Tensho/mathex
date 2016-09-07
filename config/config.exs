# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :mathex,
  ecto_repos: [Mathex.Repo]

# Configures the endpoint
config :mathex, Mathex.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "jqC1PENPOOXsSPTfpIoSn5qHY5KycXia3lkKjS3r2AfOKwUFoHq7F0Q8GO29wb15",
  render_errors: [view: Mathex.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Mathex.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
