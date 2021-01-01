defmodule HelloWeb.LayoutView do
  use HelloWeb, :view

  def title() do
    "Awesome new title"
  end

  def render("index.html", assigns) do
    "rendering with assigns #{inspect(Map.keys(assigns))}"
  end
end
