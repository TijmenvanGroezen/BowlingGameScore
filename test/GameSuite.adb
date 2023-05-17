with GameTest; use GameTest;
with AUnit.Test_Caller;

package body GameSuite is

   package Caller is new AUnit.Test_Caller (GameTest.Test);

   function Suite return Access_Test_Suite is
    Ret : constant Access_Test_Suite := new Test_Suite;
   begin
    Ret.Add_Test
        (Caller.Create ("Test No Throws", Test_No_Throw_Game'Access));
    Ret.Add_Test
        (Caller.Create ("Test Single Throw", Test_Single_Throw_Game'Access));
    Ret.Add_Test
        (Caller.Create ("Test Single Throw Strike", Test_Single_Throw_Strike'Access));
    Ret.Add_Test
        (Caller.Create ("Test Double Throw", Test_Double_Throw'Access));
    Ret.Add_Test
        (Caller.Create ("Test Double Throw Spare", Test_Double_Throw_Spare'Access));
    Ret.Add_Test
        (Caller.Create ("Test Throw After Strike", Test_Throw_After_Strike'Access));
    Ret.Add_Test
        (Caller.Create ("Test Throw Strike After Strike", Test_Throw_Strike_After_Strike'Access));
    Ret.Add_Test
        (Caller.Create ("Test Normal Three Throw Game", Test_Normal_Three_Throw_Game'Access));
    Ret.Add_Test
        (Caller.Create ("Test Spare Plus Normal Throw", Test_Spare_Plus_Throw'Access));
    Ret.Add_Test
        (Caller.Create ("Test Throw Three Strikes", Test_Three_Strikes'Access));
    Ret.Add_Test
        (Caller.Create ("Test Strike Plus Normal Throw", Test_Strikes_Plus_Normal_Throw'Access));
    Ret.Add_Test
        (Caller.Create ("Test Random Bowling Game", Test_Random_Game'Access));
    return Ret;
   end Suite;

end GameSuite;
