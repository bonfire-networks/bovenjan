import Config

#### General configuration, everything else should be in `bovenjan.exs` or `Bovenjan.RuntimeConfig`

config :bonfire, :repo_module, Bonfire.Common.Repo

config :phoenix, :json_library, Jason

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :mime, :types, %{
  "application/activity+json" => ["activity+json"]
}

config :bovenjan, :otp_app, :bovenjan
config :bonfire_common, :otp_app, :bovenjan
config :bovenjan, :repo_module, Bonfire.Common.Repo
config :bovenjan, ecto_repos: [Bonfire.Common.Repo]
config :bonfire_common, :localisation_path, "priv/localisation"

config :bonfire_data_identity, Bonfire.Data.Identity.Credential, hasher_module: Argon2

import_config "../../ember/config/bonfire_data.exs"

import_config "bovenjan.exs"
