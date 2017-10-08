### Elixirrest - sample REST server in Elixir

#### Start

```
mix do deps.get, compile
eix -S mix
```

#### Endpoints

```
curl -XPOST -d "name=test" http://localhost:3030/items
curl http://localhost:3030/items
```

#### Executable

Project uses [distillery](https://hex.pm/packages/distillery) for deployments. To build it run:

```
mix release.init
mix release
```

To start it run:

```
./_build/dev/rel/elixisrrest/bin/elixisrrest start
```
