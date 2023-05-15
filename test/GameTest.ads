with AUnit;
with AUnit.Test_Fixtures;

package GameTest is
    type Test is new AUnit.Test_Fixtures.Test_Fixture with null record;

    procedure Set_Up (T : in out Test);

    procedure Test_Dummy(T: in out Test);

end GameTest;