defmodule Catcasts.TestHelpers do
  alias Catcasts.{Repo, User}

  def user_fixture(attrs \\ %{}) do
    params =
      attrs
      |> Enum.into(%{
        first_name: "Harry",
        last_name: "Potter",
        email: "harry#{System.unique_integer([:positive])}@example.com",
        token: "2u9dfh7979hfd",
        provider: "google"
      })

    {:ok, user} =
      User.changeset(%User{}, params)
      |> Repo.insert()

    user
  end
end