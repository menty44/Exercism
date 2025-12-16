defmodule Rules do
  def eat_ghost?(power_pellet_active, touching_ghost) do
    cond do
      power_pellet_active === true and touching_ghost === true -> true
      power_pellet_active != true or touching_ghost != true -> false
    end
  end

  def score?(touching_power_pellet, touching_dot) do
    if touching_power_pellet === true or touching_dot === true do
      true
    else
      false
    end
  end

  def lose?(power_pellet_active, touching_ghost) do

    if  power_pellet_active === touching_ghost do
      false
    else
      true
    end

    if  power_pellet_active === true and touching_ghost === false do
      false
    end

    if  power_pellet_active === false and touching_ghost === true do
      true
    end
  end

  def win?(has_eaten_all_dots, power_pellet_active, touching_ghost) do
    if has_eaten_all_dots === lose?(power_pellet_active, touching_ghost) do
      false
    else
      true
    end
  end

end
