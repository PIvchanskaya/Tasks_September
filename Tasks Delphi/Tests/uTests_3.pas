Unit uTests_3;

Interface

Uses
    DUnitX.TestFramework,
    UTask_3;

Type
    [TestFixture]
    TMyTest = Class
    Public
        [Setup]
        Procedure Setup;
        [TearDown]
        Procedure TearDown;
        [Test]
        [TestCase('TestA', '6,12,18,36')]
        [TestCase('TestA', '15,20,12,60')]
        [TestCase('TestB', '1,1,1,1')]
        [TestCase('TestC', '10,5,1,10')]
        [TestCase('TestD', '25,25,25,25')]
        [TestCase('TestE', '2,2,9,18')]
        Procedure TestLCM(Const AValue1: Integer; Const AValue2: Integer; Const AValue3: Integer; Const AExpectedValue: Integer);
    End;

Implementation

Procedure TMyTest.Setup;
Begin
End;

Procedure TMyTest.TearDown;
Begin
End;

Procedure TMyTest.TestLCM(Const AValue1: Integer; Const AValue2: Integer; Const AValue3: Integer; Const AExpectedValue: Integer);
Var
    TestResult: Integer;
Begin
    TestResult := TLeastCommonMultiple.FindLCM(AValue1, AValue2, AValue3);
    Assert.AreEqual(AExpectedValue, TestResult);
End;

Initialization

TDUnitX.RegisterTestFixture(TMyTest);

End.
