defmodule Elixirrest.Mixfile do
	use Mix.Project

	def project do
		[
			app: :elixisrrest,
			version: "0.0.1",
			elixir: "~> 1.0",
			deps: deps()
		]
	end

	def application do
		[applications: [:logger, :maru], mod: {Elixirrest, []}]
	end

	defp deps do
		[{:maru, "~> 0.2.8"},{:distillery, "~> 1.5.2"}]
	end
end
