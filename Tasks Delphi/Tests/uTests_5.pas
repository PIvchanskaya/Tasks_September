Unit uTests_5;

Interface

Uses
    DUnitX.TestFramework,
    DUnitX.Utils,
    Math,
    UTask_5;

Type
    [TestFixture]
    TMyTest = Class
    Public
        [Setup]
        Procedure Setup;
        [TearDown]
        Procedure TearDown;
        [Test]
        [TestCase('TestA', '-105')]
        Procedure TestSumAndMul_1(Const AExpectedValue: Real);
        [Test]
        [TestCase('TestB', '6.85')]
        Procedure TestSumAndMul_2(Const AExpectedValue: Real);
        [Test]
        [TestCase('TestC', '-43351.2796')]
        Procedure TestSumAndMul_3(Const AExpectedValue: Real);
        [Test]
        [TestCase('TestD', '0')]
        Procedure TestSumAndMul_4(Const AExpectedValue: Real);
        [Test]
        [TestCase('TestE', '-420234.547825')]
        Procedure TestSumAndMul_5(Const AExpectedValue: Real);
    End;

Implementation

Procedure TMyTest.Setup;
Begin
End;

Procedure TMyTest.TearDown;
Begin
End;

Procedure TMyTest.TestSumAndMul_1(Const AExpectedValue: Real);
Const
    TestArr: Array [0 .. 4] Of Real = (1.0, 2.0, 3.0, 4.0, 5.0);
Var
    TestResult: Real;
Begin
    TestResult := RoundTo(TArraySumAndMul.FindSumAndMul(TestArr), 0);
    Assert.AreEqual(AExpectedValue, TestResult);
End;

Procedure TMyTest.TestSumAndMul_2(Const AExpectedValue: Real);
Const
    TestArr: Array [0 .. 4] Of Real = (1.5, 3.0, 2.2, 0.1, 5);
Var
    TestResult: Real;
Begin
    TestResult := RoundTo(TArraySumAndMul.FindSumAndMul(TestArr), -2);
    Assert.AreEqual(AExpectedValue, TestResult);
End;

Procedure TMyTest.TestSumAndMul_3(Const AExpectedValue: Real);
Const
    TestArr: Array [0 .. 2] Of Real = (-9.11, 322, -14.88);
Var
    TestResult: Real;
Begin
    TestResult := RoundTo(TArraySumAndMul.FindSumAndMul(TestArr), -4);
    Assert.AreEqual(AExpectedValue, TestResult);
End;

Procedure TMyTest.TestSumAndMul_4(Const AExpectedValue: Real);
Const
    TestArr: Array [0 .. 3] Of Real = (0, 0, 0, 0);
Var
    TestResult: Real;
Begin
    TestResult := RoundTo(TArraySumAndMul.FindSumAndMul(TestArr), 0);
    Assert.AreEqual(AExpectedValue, TestResult);
End;

Procedure TMyTest.TestSumAndMul_5(Const AExpectedValue: Real);
Const
    TestArr: Array [0 .. 2] Of Real = (-78.65, 72.85, -73.33);
Var
    TestResult: Real;
Begin
    TestResult := RoundTo(TArraySumAndMul.FindSumAndMul(TestArr), -6);
    Assert.AreEqual(AExpectedValue, TestResult);
End;

Initialization

TDUnitX.RegisterTestFixture(TMyTest);

End.
