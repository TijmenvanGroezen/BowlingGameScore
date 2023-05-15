with GameTest; use GameTest;
with AUnit.Test_Caller;

package body GameSuite is

   package Caller is new AUnit.Test_Caller (GameTest.Test);

   function Suite return Access_Test_Suite is
    Ret : constant Access_Test_Suite := new Test_Suite;
   begin
    Ret.Add_Test
        (Caller.Create ("Test Dummy", Test_Dummy'Access));
    return Ret;
   end Suite;

end GameSuite;
