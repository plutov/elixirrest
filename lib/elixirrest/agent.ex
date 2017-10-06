defmodule Elixirrest.Agent do
	@name __MODULE__

	def start_link do
		Agent.start_link(fn -> %{} end, name: @name)
	end

	def insert(params) do
		id = get_id_value()
		Agent.update(@name, &Map.put_new(&1, id, Map.merge(%{id: id}, params)))
	end

	def get do
		Agent.get(@name, &Map.values(&1))
	end

	defp get_id_value do
		:crypto.strong_rand_bytes(16) |> Base.encode16 |> String.downcase
	end
end
