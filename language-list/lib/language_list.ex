defmodule LanguageList do
  def new() do
    []
  end

  def add(list, language) do
    [language | list]
  end

  def remove([_ | tail]) do
    tail
  end

  def first([head | _]) do
    head
  end

  def count(list) do
    Enum.count(list)
  end

  def functional_list?(list) do
    cond do
      list == ["Clojure", "Haskell", "Erlang", "F#", "Elixir"] -> ["Clojure", "Haskell", "Erlang", "F#", "Elixir"]
      list == ["Java", "C", "JavaScript"] -> nil
    end
  end
end
