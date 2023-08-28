Unit uTests_4;

Interface

Uses
    DUnitX.TestFramework,
    UTask_4;

Type
    [TestFixture]
    TMyTest = Class
    Public
        [Setup]
        Procedure Setup;
        [TearDown]
        Procedure TearDown;
        [Test]
        [TestCase('TestA', '1111,4')]
        [TestCase('TestA', '101,2')]
        [TestCase('TestB', '999999,54')]
        [TestCase('TestC', '100000,1')]
        [TestCase('TestD', '25,7')]
        [TestCase('TestE', '1234567,28')]
        Procedure TestSum(Const AValue: Int64; Const AExpectedValue: Integer);
    End;

Implementation

Procedure TMyTest.Setup;
Begin
End;

Procedure TMyTest.TearDown;
Begin
End;

Procedure TMyTest.TestSum(Const AValue: Int64; Const AExpectedValue: Integer);
Var
    TestResult: Integer;
Begin
    TestResult := TSumOfDigits.FindSum(AValue);
    Assert.AreEqual(AExpectedValue, TestResult);
End;

Initialization

TDUnitX.RegisterTestFixture(TMyTest);

End.
