defmodule Rules do
  def eat_ghost?(power_pellet_active, touching_ghost) do
    cond do
      power_pellet_active === true and touching_ghost === true -> true
      power_pellet_active != true or touching_ghost != true -> false
    end
  end

  def score?(touching_power_pellet, touching_dot) do
    # Please implement the score?/2 function
  end

  def lose?(power_pellet_active, touching_ghost) do
    # Please implement the lose?/2 function
  end

  def win?(has_eaten_all_dots, power_pellet_active, touching_ghost) do
    # Please implement the win?/3 function
  end
end
