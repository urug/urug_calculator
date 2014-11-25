class Calculator
  
  def calc(param)
    total = 0
    if param.include? '+'
      arr = param.split('+')
      total = arr.shift.to_i
      while (a = arr.shift) do
        total += a.to_i
      end
    elsif param.include? '*'
      arr = param.split('*')
      total = arr.shift.to_i
      while (a = arr.shift) do
        total *= a.to_i
      end
    else
      total = param.to_i
    end
    total
  end
end