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
