defmodule Factory.GoldMiner do
  use GenServer

  def start_link(opts) do
    GenServer.start_link(__MODULE__, [], opts)
  end

  @impl true
  def init(_opts) do
    schedule_dig()
    {:ok, %{gold: 0}}
  end

  @impl true
  def handle_info(:dig, %{gold: amount}) do
    schedule_dig()

    if amount >= 10 do
      Process.send(Factory.Storage, {:store, %{gold: amount}}, [])
      {:noreply, %{gold: 0}}
    else
      {:noreply, %{gold: amount + 1}}
    end
  end

  defp schedule_dig do
    Process.send_after(self(), :dig, 1000)
  end
end
