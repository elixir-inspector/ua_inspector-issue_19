defmodule IssueInspector do
  use Application

  require Logger

  def start(_type, _args) do
    Logger.info("issue inspector: starting application")
    Supervisor.start_link([], strategy: :one_for_one)
  end
end
