defmodule Factory.IronMiner do
  use GenServer

  def start_link(opts) do
    GenServer.start_link(__MODULE__, [], opts)
  end

  @impl true
  def init(_opts) do
    schedule_dig()
    {:ok, %{iron: 0}}
  end

  @impl true
  def handle_info(:dig, %{iron: amount}) do
    schedule_dig()

    if amount >= 10 do
      Process.send(Factory.Storage, {:store, %{iron: amount}}, [])
      {:noreply, %{iron: 0}}
    else
      {:noreply, %{iron: amount + 1}}
    end
  end

  defp schedule_dig do
    Process.send_after(self(), :dig, 1000)
  end
end
