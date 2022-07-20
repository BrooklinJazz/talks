defmodule Factory.SilverMiner do
  use GenServer

  def start_link(opts) do
    GenServer.start_link(__MODULE__, [], opts)
  end

  @impl true
  def init(_opts) do
    schedule_dig()
    {:ok, %{silver: 0}}
  end

  @impl true
  def handle_info(:dig, %{silver: amount}) do
    schedule_dig()

    if amount >= 10 do
      Process.send(Factory.Storage, {:store, %{silver: amount}}, [])
      {:noreply, %{silver: 0}}
    else
      {:noreply, %{silver: amount + 1}}
    end
  end

  defp schedule_dig do
    Process.send_after(self(), :dig, 1000)
  end
end
