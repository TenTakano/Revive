defmodule ReviveWeb.PageController do
  use ReviveWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
