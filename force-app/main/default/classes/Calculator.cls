public class Calculator {
    public Decimal dynamicCalculationMethod(decimal a, decimal b, string operator) {
        decimal result;
switch on operator{
    when 'addition'{
        result = a+b;
    }
  when 'subtraction'{
            result = a-b;
  }
  when 'divison'{
        result = a/b;
        
     }
     when else {
        result = a*b;
     }
}
return result;
    }
    
}
