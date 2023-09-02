{
  Задание:
  Найти наименьшее общее кратное трех чисел.
  Вводимые числа являются натуральными.
  Вводимые данные являются заведомо верными.

  Примеры

  1.
  Входные данные: 3 5 7
  Выходные данные: 105

  2.
  Входные данные: 10 10 20
  Выходные данные: 20
}

Unit uTask_3;

Interface

Type

    TLeastCommonMultiple = Class
        Class Function FindLCM(Const Value1, Value2, Value3: Integer): Integer;
    End;

Implementation

Class Function TLeastCommonMultiple.FindLCM(Const Value1, Value2, Value3: Integer): Integer;
Begin
    //Поместите Ваш код сюда
End;

End.
