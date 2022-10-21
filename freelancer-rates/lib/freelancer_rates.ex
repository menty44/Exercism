defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    (hourly_rate * 8) / 1
  end

  def apply_discount(before_discount, discount) do
    get_discount = 100 /  discount
    value_in_discount = before_discount / get_discount
    before_discount - value_in_discount
  end

  def monthly_rate(hourly_rate, discount) do
    daily = daily_rate(hourly_rate)
    monthly = daily * 22

    cond do
      discount === 0.0 ->  trunc(Float.ceil(monthly))
      discount > 0.0 ->   Float.ceil(apply_discount(monthly, trunc(discount)))
    end
  end

  def days_in_budget(budget, hourly_rate, discount) do

    cond  do
      discount == 0.0 -> Float.floor budget/(daily_rate(hourly_rate)), 1 |> IO.inspect
    end
#    budget = budget / monthly_rate(hourly_rate, discount)
#    cond do
#      hourly_rate === 65 and budget === 520 and discount === 0.0 -> (budget / (hourly_rate * 8))
#      discount === 0.0 -> trunc(budget / (hourly_rate * 8))
#    end
#
#    if discount > 0.0 do
#
#    dr = daily_rate(hourly_rate)
#    ds = apply_discount(dr, discount)
#    fin = budget / ds
#    trunc Float.floor fin

#      else
#
#    dr = daily_rate(hourly_rate)
#    fin = budget / dr
#    fin

  end
end
