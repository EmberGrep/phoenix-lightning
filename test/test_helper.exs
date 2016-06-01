ExUnit.start

Mix.Task.run "ecto.create", ~w(-r EmbergrepFast.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r EmbergrepFast.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(EmbergrepFast.Repo)

