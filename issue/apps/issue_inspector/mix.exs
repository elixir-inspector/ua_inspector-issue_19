defmodule IssueInspector.MixProject do
  use Mix.Project

  def project do
    [
      app: :issue_inspector,
      version: "0.1.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {IssueInspector, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:initializer, path: "../../../initializer"},
      {:ua_inspector, "~> 1.0"}
    ]
  end
end
