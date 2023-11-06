defmodule Test do
  Enum.each 1..4097, fn id ->
    def __id__(unquote(id)) do
      IO.puts("Executing clause for #{unquote(id)}")
    end
  end
end


Test.__id__(4097)
