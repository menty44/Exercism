defmodule LogLevel do
  def to_label(level, legacy?) do
    if legacy? do
      case level do

        1 -> :debug
        2 -> :info
        3 -> :warning
        4 -> :error
        _ -> :unknown
      end
    else
      case level do
        0 -> :trace
        5 -> :fatal
        _ -> :unknown
      end
    end
  end

  def alert_recipient(level, legacy?) do
    # Please implement the alert_recipient/2 function
    if legacy? do
      case level do
        1 -> :debug
        2 -> :info
        3 -> :warning
        4 -> :error
        _ -> :unknown
      end
    else
      case level do
        0 -> false
        5 -> false
        _ -> :dev1
      end
    end
  end
end
