# Elixir Workshop

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `cd apps/feup_workshop_web/assets && npm install`
  * Start Phoenix endpoint with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Automatic code generation for a simple user schema.

```
mix phx.gen.html Accounts User users first_name:string last_name:string email:string:unique
```

## Template function for creating gravatar

You can find the function `get_gravatar_url/1` in the `apps/feup_workshop_web/lib/feup_workshop_web/views/user_view.ex`. This function creates the gravatar binary, encodes it in base64 and creates the data URI for the image tag.
