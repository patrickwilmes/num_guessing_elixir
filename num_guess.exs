defmodule NumberGuessingGame do
  def start do
    IO.puts "Welcome to the Number Guessing Game!"
    secret_number = :rand.uniform(100)
    play(secret_number)
  end

  defp play(secret_number) do
    guess = get_guess()
    check_guess(guess, secret_number)
  end

  defp get_guess do
    IO.puts "Enter your guess (1-100):"
    guess = IO.gets("") |> String.trim() |> String.to_integer()
    guess
  end

  defp check_guess(guess, secret_number) when guess == secret_number do
    IO.puts "Congratulations! You guessed the correct number: #{secret_number}"
  end

  defp check_guess(guess, secret_number) when guess < secret_number do
    IO.puts "Too low! Try again."
    play(secret_number)
  end

  defp check_guess(guess, secret_number) when guess > secret_number do
    IO.puts "Too high! Try again."
    play(secret_number)
  end
end

NumberGuessingGame.start()

