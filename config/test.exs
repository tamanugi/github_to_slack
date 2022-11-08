import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :github_to_slack, GithubToSlackWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "TSd8xDq7xlJG/9YEFM3R1HTMFkS/MisyI+fX26NQHK29WUvSqeC0UaTkwg60qlO+",
  server: false

# In test we don't send emails.
config :github_to_slack, GithubToSlack.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
