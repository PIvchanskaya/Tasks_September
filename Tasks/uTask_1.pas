{
  �������:
  ���������� ��������� 4 ������� ������������: ��������, ���������, ��������� � �������.
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
    //��������� ��� ��� ����
End;

Class Function TCalculator.Sub(Const Value1: Int64; Const Value2: Int64): Int64;
Begin
    //��������� ��� ��� ����
End;

Class Function TCalculator.Multiply(Const Value1: Int64; Const Value2: Int64): Int64;
Begin
    //��������� ��� ��� ����
End;

Class Function TCalculator.Divide(Const Value1: Int64; Const Value2: Int64): Extended;
Begin
    //��������� ��� ��� ����
End;

End.
