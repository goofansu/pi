defmodule Pi.Router do
  use Plug.Router

  plug(:match)
  plug(:dispatch)

  get "/" do
    markup = """
    <html>
    <head>
      <title>Pi</title>
    </head>
    <body>
      <img src="video.mjpg" width="1024" />
    </body>
    </html>
    """

    conn
    |> put_resp_header("Content-Type", "text/html")
    |> send_resp(200, markup)
  end

  forward("/video.mjpg", to: Pi.Streamer)

  match _ do
    send_resp(conn, 404, "Oops. Try /")
  end
end
