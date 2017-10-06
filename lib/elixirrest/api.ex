defmodule Elixirrest.Api do
	use Maru.Router
	alias Elixirrest.Agent, as: Store

	namespace :items do
		desc "get all items"
		get do
			Store.get |> json
		end

		desc "creates an item"
		params do
			requires :name, type: String
		end
		post do
			Store.insert(params) |> json
		end
	end
end
