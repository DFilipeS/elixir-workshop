defmodule FeupWorkshop.Application do
  @moduledoc """
  The FeupWorkshop Application Service.

  The feup_workshop system business domain lives in this application.

  Exposes API to clients such as the `FeupWorkshopWeb` application
  for use in channels, controllers, and elsewhere.
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Supervisor.start_link([
      supervisor(FeupWorkshop.Repo, []),
    ], strategy: :one_for_one, name: FeupWorkshop.Supervisor)
  end
end
