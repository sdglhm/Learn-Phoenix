# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :lesson_001,
  ecto_repos: [Lesson001.Repo]

# Configures the endpoint
config :lesson_001, Lesson001Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "pATVIDoRVhh7aX4Fj3YxN56WZvnMGXK8nqgF4pmGg8GkVVuwPaZ+TVnJhIhBr73m",
  render_errors: [view: Lesson001Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Lesson001.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
