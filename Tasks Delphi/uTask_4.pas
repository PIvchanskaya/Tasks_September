{
  Задание:
  Определить сумму цифр числа.
  Вводимое число является натуральным.
  Вводимые данные являются заведомо верными.

  Примеры

  1.
  Входные данные: 808
  Выходные данные: 16

  2.
  Входные данные: 59
  Выходные данные: 14

  3.
  Входные данные: 717
  Выходные данные: 15

  4.
  Входные данные: 100
  Выходные данные: 1


}

Unit uTask_4;

Interface

Type
    TSumOfDigits = Class
        Class Function FindSum(Const Value: Int64): Integer;
    End;

Implementation

Class Function TSumOfDigits.FindSum(Const Value: Int64): Integer;
Begin
    //Поместите Ваш код сюда
End;

End.
