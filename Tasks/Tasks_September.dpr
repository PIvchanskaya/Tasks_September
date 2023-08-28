Program Tasks_September;

{$IFNDEF TESTINSIGHT}
{$APPTYPE CONSOLE}
{$ENDIF}
{$STRONGLINKTYPES ON}

uses
  System.SysUtils,
  {$IFDEF TESTINSIGHT}
  TestInsight.DUnitX,
  {$ELSE}
  DUnitX.Loggers.Console,
  DUnitX.Loggers.Xml.NUnit,
  {$ENDIF }
  DUnitX.TestFramework,
  uTask_1 in 'uTask_1.pas',
  uTask_2 in 'uTask_2.pas',
  uTask_3 in 'uTask_3.pas',
  uTask_4 in 'uTask_4.pas',
  uTask_5 in 'uTask_5.pas',
  //uTests_1 in 'Tests\uTests_1.pas',
  //uTests_2 in 'Tests\uTests_2.pas',
  //uTests_3 in 'Tests\uTests_3.pas',
  uTests_4 in 'Tests\uTests_4.pas',
  uTests_5 in 'Tests\uTests_5.pas';

{$IFNDEF TESTINSIGHT}

Var
    Runner: ITestRunner;
    Results: IRunResults;
    Logger: ITestLogger;
    NunitLogger: ITestLogger;

    {$ENDIF}

Begin

    {$IFDEF TESTINSIGHT}

    TestInsight.DUnitX.RunRegisteredTests;

    {$ELSE}

    Try
        //Check command line options, will exit if invalid
        TDUnitX.CheckCommandLine;
        //Create the test runner
        Runner := TDUnitX.CreateRunner;
        //Tell the runner to use RTTI to find Fixtures
        Runner.UseRTTI := True;
        //When true, Assertions must be made during tests;
        Runner.FailsOnNoAsserts := False;

        //tell the runner how we will log things
        //Log to the console window if desired
        If TDUnitX.Options.ConsoleMode <> TDunitXConsoleMode.Off Then
        Begin
            Logger := TDUnitXConsoleLogger.Create(TDUnitX.Options.ConsoleMode = TDunitXConsoleMode.Quiet);
            Runner.AddLogger(Logger);
        End;
        //Generate an NUnit compatible XML File
        NunitLogger := TDUnitXXMLNUnitFileLogger.Create(TDUnitX.Options.XMLOutputFile);
        Runner.AddLogger(NunitLogger);

        //Run tests
        Results := Runner.Execute;
        If Not Results.AllPassed Then
            System.ExitCode := EXIT_ERRORS;

        {$IFNDEF CI}

        //We don't want this happening when running under CI.
        If TDUnitX.Options.ExitBehavior = TDUnitXExitBehavior.Pause Then
        Begin
            System.Write('Done.. press <Enter> key to quit.');
            System.Readln;
        End;

        {$ENDIF}

    Except
        On E: Exception Do
            System.Writeln(E.ClassName, ': ', E.Message);
    End;

    {$ENDIF}

End.
