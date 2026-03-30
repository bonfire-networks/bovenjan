import Config

#### Extension-specific compile-time configuration goes here, everything else should be in `Bovenjan.RuntimeConfig`

# Please note that most of these are defaults meant to be overridden by instance admins in Settings rather than edited here
config :bonfire, :ui,
  hide_app_switcher: true,
  feed_object_extension_preloads_disabled: false,
  smart_input_activities: [
    category: "Create a topic",
    label: "New label"
  ],
  themes_light: [
    "bovenjan"
  ],
  themes_dark: [
    "bovenjan-dark"
  ]

config :bonfire_social, Bonfire.Social.Pins, modularity: true
config :bonfire_ui_reactions, Bonfire.UI.Reactions.PinActionLive, modularity: true
