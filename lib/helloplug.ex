defmodule Helloplug do
  def init(default_opts) do
    IO.puts "starting up Helloplug..."
    default_opts
  end

  def call(conn, _opts) do
    IO.puts "saying hello!"
    conn |> 
        Plug.Conn.put_resp_header("Server", "Plug") |> 
        Plug.Conn.send_resp(200, "Hello, world!")
#    Plug.Conn.send_resp(conn, 200, "Hello, Justin!")
  end
end
