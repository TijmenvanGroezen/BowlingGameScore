with AUnit;
with AUnit.Test_Fixtures;
with Game; use Game.Integer_Vectors;

package GameTest is
    --  use Game.Integer_Vectors;

    type Test is new AUnit.Test_Fixtures.Test_Fixture with record
        G : Game.Bowling;
    end record;

    procedure Set_Up (T : in out Test);

    procedure Test_Dummy(T: in out Test);
    procedure Test_No_Throw_Game (T: in out Test);
    procedure Test_Single_Throw_Game(T: in out Test);
    procedure Test_Single_Throw_Strike(T : in out Test);
    procedure Test_Double_Throw(T : in out Test);
    procedure Test_Double_Throw_Spare(T : in out Test);
    procedure Test_Throw_After_Strike(T : in out Test);
    procedure Test_Throw_Strike_After_Strike(T: in out Test);
    procedure Test_Normal_Three_Throw_Game(T : in out Test);
    procedure Test_Spare_Plus_Throw(T : in out Test);
    procedure Test_Three_Strikes(T : in out Test);
    procedure Test_Strikes_Plus_Normal_Throw(T : in out Test);
end GameTest;