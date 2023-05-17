with Ada.Text_IO; use Ada.Text_IO;
with Game; use Game.Integer_Vectors;

procedure Main is
    X : Integer;
    V : constant Vector := 5 & 3;
    G : constant Game.Bowling := Game.New_Bowling(V);
begin
    Put_Line("Start Bowling Game");

    X := Game.Dummy(2,2);
    Put_Line(Integer'Image(X));

    X := Game.BA(G);
    Put_Line(Integer'Image(X));
    
end Main;