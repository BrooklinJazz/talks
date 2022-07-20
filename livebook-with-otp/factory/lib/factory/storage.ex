defmodule Factory.Storage do
  use GenServer

  def start_link(opts) do
    GenServer.start_link(__MODULE__, [], opts)
  end

  @impl true
  def init(_opts) do
    {:ok, %{silver: 0, iron: 0, gold: 0}}
  end

  @impl true
  def handle_info({:store, map}, state) do
    new_state =
      Enum.reduce(state, %{}, fn {key, value}, acc ->
        added_value = Map.get(map, key, 0)
        Map.put(acc, key, value + added_value)
      end)

    {:noreply, new_state}
  end
end
