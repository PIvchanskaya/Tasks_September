{
  Задание:
  Найти разность суммы и произведение элементов массива.
  Вводимые числа являются рациональными.
  Вводимые данные являются заведомо верными.

  Примеры
  1.
  Входные данные: 0.1 0.1 0.1
  Выходные данные: 0.299

  2.
  Входные данные: -2 -1 0 1 2
  Выходные данные: 0

}

Unit uTask_5;

Interface

Type
    //TArr = Array of Real; - так лучше делать в будущем. Пока пишем ручками
    TArraySumAndMul = Class
        Class Function FindSumAndMul(Const Arr: Array Of Real): Real;
    End;

Implementation

Class Function TArraySumAndMul.FindSumAndMul(Const Arr: Array Of Real): Real;
Begin
    //Поместит Ваш код сюда
End;

End.
