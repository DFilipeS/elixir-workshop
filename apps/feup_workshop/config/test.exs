use Mix.Config

# Configure your database
config :feup_workshop, FeupWorkshop.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "feup_workshop_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
