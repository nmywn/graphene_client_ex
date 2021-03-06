defmodule GrapheneClientEx.Mixfile do
  use Mix.Project

  def project do
    [app: :graphene_client_ex,
     version: "0.2.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     description: description(),
      package: package()
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger],
     mod: {Graphene, []}]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:websocket_client, "~> 1.2.0"},
      {:poison, "~> 2.0"},
      {:credo, ">= 0.0.0", only: [:test, :dev]},
      {:ex_doc, ">= 0.0.0", only: :dev},
    ]
  end

  defp description do
    """
    Elixir websockets library and utilities for Bitshares/Graphene 2.0 blockchain
    """
  end

  defp package do
    [
     name: :graphene_client_ex,
     files: ["lib", "mix.exs", "README*", "LICENSE*"],
     maintainers: ["ontofractal"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/cyberpunk-ventures/graphene_client_ex"}
   ]
end
end
