with AUnit.Reporter.Text;
with AUnit.Run;
with GameSuite; use GameSuite;

procedure Test_Game is
    procedure Runner is new AUnit.Run.Test_Runner(Suite);
    Reporter : AUnit.Reporter.Text.Text_Reporter;
        
begin
    Runner(Reporter);        
end Test_Game;