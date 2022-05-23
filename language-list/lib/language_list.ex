defmodule LanguageList do
  def new() do
    []
  end

  def add(list, language) do
    Enum.sort(list ++ [language])
  end

  def remove(list) do
    index = Enum.count(list) - 1
    string_to_be_deleted = Enum.at(list, index)
    List.delete(list, string_to_be_deleted)
  end

  def first(list) do
    cond do
      Enum.count(list) === 1 -> Enum.at(list, 0)
      Enum.count(list) > 1 -> Enum.at(list, 1)
    end
  end

  def count(list) do
    Enum.count(list)
  end

  def functional_list?(list) do
    # Please implement the functional_list?/1 function
  end
end
