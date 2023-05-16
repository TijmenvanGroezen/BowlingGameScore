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

    procedure Test_Single_Throw_Strike(T : in out Test) is
    Single_Throw_Strike : Game.Integer_Vectors.Vector;
    begin
        Single_Throw_Strike.Append(10);
        T.G := Game.New_Bowling(Single_Throw_Strike);
        Assert (Game.BA(T.G) = 10, "Single Throw Strike");
    end Test_Single_Throw_Strike;

    procedure Test_Double_Throw(T : in out Test) is
    Double_Throw : Game.Integer_Vectors.Vector;
    begin
        Double_Throw.Append(3);
        Double_Throw.Append(5);
        T.G := Game.New_Bowling(Double_Throw);
        Assert (Game.BA(T.G) = 8, "Double Throw");
    end Test_Double_Throw;

end GameTest;