with AUnit.Assertions; use AUnit.Assertions;
with Game;

package body GameTest is
    procedure Set_Up (T : in out Test) is
    begin
        null;
    end Set_Up;

    procedure Test_Dummy (T: in out Test) is
    begin
        Assert (Game.Dummy(2,2) = 4, "Test Dummy function");
        
    end Test_Dummy;

end GameTest;