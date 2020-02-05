defmodule Lesson001.Repo do
  use Ecto.Repo,
    otp_app: :lesson_001,
    adapter: Ecto.Adapters.Postgres
end
