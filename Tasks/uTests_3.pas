unit uTests_3;

interface

uses
  DUnitX.TestFramework;

type
  [TestFixture]
  TMyTest = class
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
  end;

implementation

procedure TMyTest.Setup;
begin
end;

procedure TMyTest.TearDown;
begin
end;

initialization
  TDUnitX.RegisterTestFixture(TMyTest);

end.
