Program Tasks_September;

{$IFNDEF TESTINSIGHT}
{$APPTYPE CONSOLE}
{$ENDIF}
{$STRONGLINKTYPES ON}

Uses
    System.SysUtils,

    {$IFDEF TESTINSIGHT}

    TestInsight.DUnitX,

    {$ELSE}

    DUnitX.Loggers.Console,
    DUnitX.Loggers.Xml.NUnit,

    {$ENDIF }

    DUnitX.TestFramework,
    UTask_1 In 'uTask_1.pas',
    UTask_2 In 'uTask_2.pas',
    UTask_3 In 'uTask_3.pas',
    UTask_4 In 'uTask_4.pas',
    UTask_5 In 'uTask_5.pas',
    UTests_1 In 'Tests\uTests_1.pas',
    UTests_2 In 'Tests\uTests_2.pas',
    UTests_3 In 'Tests\uTests_3.pas',
    UTests_4 In 'Tests\uTests_4.pas',
    UTests_5 In 'Tests\uTests_5.pas';

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
