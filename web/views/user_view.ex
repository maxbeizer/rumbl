defmodule Rumbl.UserView do
  use(Rumbl.Web, :view)
  alias(Rumbl.User)

  def first_name(%User{name: name}) do
    name
    |> String.split(" ")
    |> Enum.at(0)
  end

  def render("user.json", %{user: user}) do
    %{id: user.id, username: user.username}
  end

  def error_tag(form, field) do
    if error = form.errors[field] do
      content_tag :span, error, class: "help-block"
    end
  end
end
