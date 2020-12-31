defmodule HelloWeb.PageController do
  use HelloWeb, :controller

  def index(conn, _params) do
    # render(conn, :index)

    # conn
    # |> put_layout("admin.html")
    # |> render("index.html")

    # conn
    # |> put_status(202)
    # |> render("index.html")

    conn
    |> put_flash(:info, "Welcome to Phoenix, from flash info!")
    |> put_flash(:error, "Let's pretend there is an error")
    |> redirect(to: Routes.page_path(conn, :redirect_test))
  end

  def redirect_test(conn, _params) do
    render(conn, "index.html")
  end

  def show(conn, %{"messenger" => messenger}) do
    json(conn, %{id: messenger})
  end
end
