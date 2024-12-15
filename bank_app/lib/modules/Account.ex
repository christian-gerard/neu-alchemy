

defmodule Account do

  defstruct name: nil, balance: 0, transactions: []

  def account_menu do

    IO.puts "<<ELIXIR BANK: ACCOUNT>>"
    IO.puts ""

  end

  def test_account do
    IO.puts "Account Module Imported"
  end

  def view_accounts do
    IO.puts "<<Account List>>"
  end

end
