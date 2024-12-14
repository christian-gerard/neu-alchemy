defmodule Calculator do

  def run_calculator do
    x = get_first_number()
    get_operation()
    y = get_second_number()

    IO.puts "1: #{x} 2:#{y}"

  end

  def get_first_number do
    IO.gets("Enter First Number: ")
    |> String.trim()
    |> parse_integer()
  end

  def get_second_number do
    IO.gets("Enter Second Number: ")
    |> String.trim()
    |> parse_integer()
  end

  def get_operation do
    IO.gets("Enter Operation (+, -, *, /):")
    |> String.trim()
    |> parse_operation()
  end

  defp parse_operation(input) do


    case input do
      "+" -> "+"
      "-" -> "-"
      "*" -> "*"
      "/" -> "/"
      _ ->
        IO.puts("Invalid operation... Try again.")
        get_operation()
    end
  end

  defp parse_integer(input) do
    case Integer.parse(input) do
      {num, _} -> num
      :error ->
        IO.puts("Invalid number... Try again.")
        get_first_number()
    end
  end
end






IO.puts "<<ELIXIR CALC>>"

Calculator.run_calculator()
