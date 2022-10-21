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

    dr = daily_rate(hourly_rate)

    cond  do
      discount == 0.0 -> Float.floor budget/(daily_rate(hourly_rate)), 1
      discount > 0.0 -> disc(budget, hourly_rate, dr, discount)
    end

  end

  def disc(budget, hourly_rate, dr, discount) do
    fin = &(&1 / &2)

    ds = apply_discount(dr, discount)
    fin = fin.(budget, ds)
    Float.floor fin, 1
  end
end
