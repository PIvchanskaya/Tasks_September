Unit uTests_1;

Interface

Uses
    DUnitX.TestFramework,
    UTask_1,
    SysUtils;

Type
    EMathError = Class(Exception);
    EZeroDivide = Class(EMathError);
    [TestFixture]
    TMyTest = Class
    Public
        [Setup]
        Procedure Setup;
        [TearDown]
        Procedure TearDown;
        [Test]
        [TestCase('TestA', '1,2,3')]
        [TestCase('TestB', '0,0,0')]
        [TestCase('TestC', '-1,2,1')]
        [TestCase('TestD', '-1,-2,-3')]
        Procedure TestAddition(Const AValue1: Int64; Const AValue2: Int64; Const AExpectedValue: Int64);
        [Test]
        [TestCase('TestA', '1,2,-1')]
        [TestCase('TestB', '0,0,0')]
        [TestCase('TestC', '-1,1,-2')]
        [TestCase('TestD', '-1,-2,1')]
        Procedure TestSubtraction(Const AValue1: Int64; Const AValue2: Int64; Const AExpectedValue: Int64);
        [Test]
        [TestCase('TestA', '1,5,5')]
        [TestCase('TestB', '5,1,5')]
        [TestCase('TestC', '0,1,0')]
        [TestCase('TestD', '0,0,0')]
        [TestCase('TestE', '-1,-2,2')]
        [TestCase('TestF', '-5,1,-5')]
        [TestCase('TestG', '4,4,16')]
        Procedure TestMultiplication(Const AValue1: Int64; Const AValue2: Int64; Const AExpectedValue: Int64);
        [Test]
        [TestCase('TestA', '2,1,2.0')]
        [TestCase('TestB', '25,5,5.0')]
        Procedure TestDivision_1(Const AValue1: Int64; Const AValue2: Int64; Const AExpectedValue: Extended);
        [Test]
        [TestCase('TestA', '3,2,1.5')]
        Procedure TestDivision_2(Const AValue1: Int64; Const AValue2: Int64; Const AExpectedValue: Extended);
        {
          [Test]
          [TestCase('TestA', '10,0')]
          Procedure TestDivisionByZero(Const AValue1: Int64; Const AValue2: Int64);
        }
    End;

Implementation

Procedure TMyTest.Setup;
Begin
End;

Procedure TMyTest.TearDown;
Begin
End;

Procedure TMyTest.TestAddition(Const AValue1: Int64; Const AValue2: Int64; Const AExpectedValue: Int64);
Var
    TestResult: Int64;
Begin
    TestResult := TCalculator.Add(AValue1, AValue2);
    Assert.AreEqual(AExpectedValue, TestResult);
End;

Procedure TMyTest.TestSubtraction(Const AValue1: Int64; Const AValue2: Int64; Const AExpectedValue: Int64);
Var
    TestResult: Int64;
Begin
    TestResult := TCalculator.Sub(AValue1, AValue2);
    Assert.AreEqual(AExpectedValue, TestResult);
End;

Procedure TMyTest.TestMultiplication(Const AValue1: Int64; Const AValue2: Int64; Const AExpectedValue: Int64);
Var
    TestResult: Int64;
Begin
    TestResult := TCalculator.Multiply(AValue1, AValue2);
    Assert.AreEqual(AExpectedValue, TestResult);
End;

Procedure TMyTest.TestDivision_1(Const AValue1: Int64; Const AValue2: Int64; Const AExpectedValue: Extended);
Var
    TestResult: Extended;
Begin
    TestResult := TCalculator.Divide(AValue1, AValue2);
    Assert.AreEqual(AExpectedValue, TestResult);
End;

Procedure TMyTest.TestDivision_2(Const AValue1: Int64; Const AValue2: Int64; Const AExpectedValue: Extended);
Var
    TestResult: Extended;
Begin
    TestResult := TCalculator.Divide(AValue1, AValue2);
    Assert.AreEqual(AExpectedValue, TestResult);
End;

{
  Procedure TMyTest.TestDivisionByZero(Const AValue1: Int64; Const AValue2: Int64);
  Begin
  Assert.WillRaise(
  Procedure
  Begin
  TCalculator.Divide(AValue1, AValue2);
  End, EZeroDivide, 'Division by zero!');
  End;

}

Initialization

TDUnitX.RegisterTestFixture(TMyTest);

End.
