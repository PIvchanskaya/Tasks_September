{
  Задание:
  Необходимо составить 4 функции калькулятора: сложение, вычитание, умножение и деление.
  Учтите, что для любой операции первым операндом всегда является Value1, вторым - Value2.
  Вводимые данные являются заведомо верными.

  Примеры
      1. Сложение
      Входные данные: 1 0
      Выходные данные: 1

      2. Вычитание
      Входные данные: -1 1
      Выходные данные: 0

      3. Умножение
      Входные данные: 10 10
      Выходные данные: 100

      4. Сложение
      Входные данные: 10 4
      Выходные данные: 2.5
}

Unit uTask_1;

Interface

Type
    TCalculator = Class
        Class Function Add(Const Value1, Value2: Int64): Int64;
        Class Function Sub(Const Value1, Value2: Int64): Int64;
        Class Function Multiply(Const Value1, Value2: Int64): Int64;
        Class Function Divide(Const Value1, Value2: Int64): Extended;
    End;

Implementation

Class Function TCalculator.Add(Const Value1, Value2: Int64): Int64;
Begin
    //Поместите Ваш код сюда
End;

Class Function TCalculator.Sub(Const Value1: Int64; Const Value2: Int64): Int64;
Begin
    //Поместите Ваш код сюда
End;

Class Function TCalculator.Multiply(Const Value1: Int64; Const Value2: Int64): Int64;
Begin
    //Поместите Ваш код сюда
End;

Class Function TCalculator.Divide(Const Value1: Int64; Const Value2: Int64): Extended;
Begin
    //Поместите Ваш код сюда
End;

End.
