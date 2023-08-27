Unit uTests_2;

Interface

Uses
    DUnitX.TestFramework, uTask_2;

Type
    [TestFixture]
    TMyTest = Class
    Public
        [Setup]
        Procedure Setup;
        [TearDown]
        Procedure TearDown;
        [Test]
        [TestCase('TestA', '93,5,No')]
        [TestCase('TestB', '0,100,Yes')]
        [TestCase('TestC', '3,1.5,Yes')]
        [TestCase('TestD', '25,5,Yes')]
        [TestCase('TestE', '6,6,Yes')]
        [TestCase('TestF', '1,100,No')]
        Procedure TestFraction(Const P: Extended; Const Q: Extended; Const AExpectedValue: String);
    End;

Implementation

Procedure TMyTest.Setup;
Begin
End;

Procedure TMyTest.TearDown;
Begin
End;

Procedure TMyTest.TestFraction(Const P: Extended; Const Q: Extended; Const AExpectedValue: String);
Var
    TestResult: String;
Begin
    TestResult := TFraction.CanBeReduced(P, Q);
    Assert.AreEqual(AExpectedValue, TestResult);
End;

Initialization

TDUnitX.RegisterTestFixture(TMyTest);

End.
