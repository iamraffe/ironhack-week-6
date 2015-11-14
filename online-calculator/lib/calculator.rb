class Calculator
  def addition(x,y)
    x+y
  end
  def substraction(x,y)
    x-y
  end
  def multiplication(x,y)
    x*y
  end
  def division(x,y)
    x/y
  end

  def solve(operation,x,y)
    case operation
      when 'addition'
        addition(x.to_f,y.to_f)
      when 'substraction'
        substraction(x.to_f,y.to_f)
      when 'multiplication'
        multiplication(x.to_f,y.to_f)
      when 'division'
        division(x.to_f,y.to_f)
    end
  end
end
