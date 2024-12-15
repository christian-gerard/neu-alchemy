# Bank Account App
# Create, Delete Users
import Account

IO.puts "<<ELIXIR BANK>>\n"

user_name = IO.gets "Username: " |> String.trim()
password = IO.gets "Password: " |> String.trim()
password_conf = IO.gets "Password (Again): " |> String.trim()

if password == password_conf do
  IO.puts "The passwords Match"
  IO.puts "#{user_name}"
else
  IO.puts "Please Ensure that the passwords match"
end
