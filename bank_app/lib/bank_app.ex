import Account

defmodule BankApp do
  @moduledoc """
  Documentation for `BankApp`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> BankApp.hello()
      :world

  """

  def run_bank do
    IO.puts "\n<<WELCOME TO ELIXIR BANK>>\n"
    IO.puts "<<Please Choose One of The Following...>>\n"
    IO.puts "<<1. User>>"
    IO.puts "<<2. Account>>"
    IO.puts "<<3. Transactions>>\n"
    menu = IO.gets "Enter Here: "
    navigate_menu(menu)
  end

  def navigate_menu(menu_input) do
    input = menu_input |> String.trim()
    case input do
      "1" -> account_menu()
      _ ->
        IO.puts "Invalid Input...Try Again"
        input = IO.gets "Enter Here: "
        navigate_menu(input)
    end
  end

end

BankApp.run_bank()
