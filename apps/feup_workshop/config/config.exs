use Mix.Config

config :feup_workshop, ecto_repos: [FeupWorkshop.Repo]

import_config "#{Mix.env}.exs"
