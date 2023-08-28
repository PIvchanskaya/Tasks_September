{
  Задание:
  Определить, является ли дробь P/Q сократимой.
  Если дробь сократима, то необходимо вывести "Yes", иначе вывести "No".
  Учтите, что вводимые числа больше нуля.
  Вводимые данные являются заведомо верными.

  Примеры
  1.
  Входные данные: 5 3
  Выходные данные: No

  2.
  Входные данные: 0 10
  Выходные данные: Yes

  3.
  Входные данные: 9 1.5
  Выходные данные: Yes

  4.
  Входные данные: 1 9
  Выходные данные: No
}

Unit uTask_2;

Interface

Type
    TFraction = Class
        Class Function CanBeReduced(P, Q: Extended): String;
    End;

Implementation

Class Function TFraction.CanBeReduced(P: Extended; Q: Extended): String;
Begin
    //Поместите Ваш код сюда
End;

End.
