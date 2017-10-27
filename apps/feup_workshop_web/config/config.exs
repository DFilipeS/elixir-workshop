# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :feup_workshop_web,
  namespace: FeupWorkshopWeb,
  ecto_repos: [FeupWorkshop.Repo]

# Configures the endpoint
config :feup_workshop_web, FeupWorkshopWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "stUX+RSlVMLtNynPgbZ6DEPvgDapn+paZSbQd38Mmvk8OE08WYtwzyMmkKCuGvmv",
  render_errors: [view: FeupWorkshopWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: FeupWorkshopWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :feup_workshop_web, :generators,
  context_app: :feup_workshop

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
