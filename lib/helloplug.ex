defmodule Helloplug do
    use Router

    def route("GET", ["hello"], conn) do
      # this route is for /hello
      conn |> Plug.Conn.send_resp(200, "Hello, world!")
    end

    def route("GET", ["users", user_id], conn) do
      # this route is for /users/<user_id>
      conn |> Plug.Conn.send_resp(200, "You requested user #{user_id}")
    end

    def route(_method, _path, conn) do
      # this route is called if no other routes match
      conn |> Plug.Conn.send_resp(404, "Couldn't find that page, sorry!")
    end
end
