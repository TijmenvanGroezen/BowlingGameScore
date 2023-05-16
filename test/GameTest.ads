with AUnit;
with AUnit.Test_Fixtures;
with Game;

package GameTest is
    --  use Game.Integer_Vectors;

    type Test is new AUnit.Test_Fixtures.Test_Fixture with record
        G : Game.Bowling;
    end record;

    procedure Set_Up (T : in out Test);

    procedure Test_Dummy(T: in out Test);
    procedure Test_No_Throw_Game (T: in out Test);
    procedure Test_Single_Throw_Game(T: in out Test);
end GameTest;