with AUnit.Assertions; use AUnit.Assertions;

package body GameTest is
    procedure Set_Up (T : in out Test) is
    Empty_Frame : Game.Integer_Vectors.Vector;
    begin
        T.G := Game.New_Bowling(Empty_Frame);
    end Set_Up;

    procedure Test_Dummy (T: in out Test) is
    begin
        Assert (Game.Dummy(2,2) = 4, "Test Dummy function");
        
    end Test_Dummy;

    procedure Test_No_Throw_Game (T: in out Test) is
    begin
        Assert (Game.BA(T.G) = 0, "No throws");
    end Test_No_Throw_Game;

    procedure Test_Single_Throw_Game(T: in out Test) is
    Single_Throw : Game.Integer_Vectors.Vector;

    begin
        Single_Throw.Append(3);
        T.G := Game.New_Bowling(Single_Throw);
        Assert (Game.BA(T.G) = 3, "Single Throw");
    end Test_Single_Throw_Game;

end GameTest;