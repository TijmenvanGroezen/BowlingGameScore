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

    procedure Test_Double_Throw_Spare(T : in out Test) is
    Double_Throw : Game.Integer_Vectors.Vector;
    begin
        Double_Throw.Append(3);
        Double_Throw.Append(7);
        T.G := Game.New_Bowling(Double_Throw);
        Assert (Game.BA(T.G) = 10, "Double Throw Spare");
    end Test_Double_Throw_Spare;

    procedure Test_Throw_After_Strike(T : in out Test) is
    Throw_After_Strike : Game.Integer_Vectors.Vector;
    begin
        Throw_After_Strike.Append(10);
        Throw_After_Strike.Append(7);
        T.G := Game.New_Bowling(Throw_After_Strike);
        Assert (Game.BA(T.G) = 24, "Throw After Strike");
    end Test_Throw_After_Strike;

    procedure Test_Throw_Strike_After_Strike(T: in out Test) is
    Throw_Strike_After_Strike : Game.Integer_Vectors.Vector;
    begin
        Throw_Strike_After_Strike.Append(10);
        Throw_Strike_After_Strike.Append(10);
        T.G := Game.New_Bowling(Throw_Strike_After_Strike);
        Assert (Game.BA(T.G) = 30, "Throw Strike After Strike");
    end Test_Throw_Strike_After_Strike;

    procedure Test_Normal_Three_Throw_Game(T : in out Test) is
    Three_Throws : Game.Integer_Vectors.Vector;
    begin
        Three_Throws.Append(3);
        Three_Throws.Append(5);
        Three_Throws.Append(4);
        T.G := Game.New_Bowling(Three_Throws);
        Assert (Game.BA(T.G) = 12, "Normal Three Throw Game");
    end Test_Normal_Three_Throw_Game;

    procedure Test_Spare_Plus_Throw(T : in out Test) is
    Spare_Plus_Throw : Game.Integer_Vectors.Vector;
    begin
        Spare_Plus_Throw.Append(5);
        Spare_Plus_Throw.Append(5);
        Spare_Plus_Throw.Append(4);
        T.G := Game.New_Bowling(Spare_Plus_Throw);
        Assert (Game.BA(T.G) = 18, "Spare Plus Normal Throw");
    end Test_Spare_Plus_Throw;

    procedure Test_Three_Strikes(T : in out Test) is
    Three_Strikes : Game.Integer_Vectors.Vector;
    begin
        Three_Strikes.Append(10);
        Three_Strikes.Append(10);
        Three_Strikes.Append(10);
        T.G := Game.New_Bowling(Three_Strikes);
        Assert (Game.BA(T.G) = 50, "Throw Three Strikes");
    end Test_Three_Strikes;

    procedure Test_Strikes_Plus_Normal_Throw(T : in out Test) is
    Strike_Plus_Throw : Game.Integer_Vectors.Vector;
    begin
        Strike_Plus_Throw.Append(10);
        Strike_Plus_Throw.Append(4);
        Strike_Plus_Throw.Append(1);
        T.G := Game.New_Bowling(Strike_Plus_Throw);
        Assert (Game.BA(T.G) = 20, "Strike Plus Normal Throw");
    end Test_Strikes_Plus_Normal_Throw;

end GameTest;