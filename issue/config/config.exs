import Mix.Config

config :ua_inspector,
  init: {Initializer, :init_ua_inspector},
  startup_silent: true
