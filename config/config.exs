# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :vampiria,
  ecto_repos: [Vampiria.Repo]

# Configures the endpoint
config :vampiria, VampiriaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "vKu8/UdXJnyrPx3IKgKe/eONhyVGxFiobJZZGS6A/d9CRcPCwr8510/IzyEB3hic",
  render_errors: [view: VampiriaWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Vampiria.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
