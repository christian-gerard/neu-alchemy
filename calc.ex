defmodule Calculator do

  def run_calculator do
    x = get_first_number()
    op = get_operation()
    y = get_second_number()
    IO.puts "The result of #{x} #{op} #{y} is..."
    IO.puts "RESULT: #{calculate_result(x,y,op)}"
    restart = IO.gets "Again? (Y/n):"
    validate_again(restart)
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

  defp calculate_result(x,y,op) do
    case op do
      "+" -> x + y
      "-" -> x - y
      "*" -> x * y
      "/" -> x / y
    end
  end

  defp validate_again(restart) do
    res = String.trim(restart)
    case res do
      "Y" -> Calculator.run_calculator()
      "n" -> IO.puts "Thanks & Goodbye"
      _ ->
        IO.puts "Please enter 'Y' or 'n'"
        new = IO.gets "Again? (Y/n): "
        validate_again(new)
    end
  end
end


IO.puts "<<ELIXIR CALC>>"

Calculator.run_calculator()
