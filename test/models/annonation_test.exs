defmodule Rumbl.AnnonationTest do
  use Rumbl.ModelCase

  alias Rumbl.Annonation

  @valid_attrs %{at: 42, body: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Annonation.changeset(%Annonation{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Annonation.changeset(%Annonation{}, @invalid_attrs)
    refute changeset.valid?
  end
end
