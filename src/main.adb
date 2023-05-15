with Ada.Text_IO; use Ada.Text_IO;
with Game;

procedure Main is
    X : Integer;
begin
    Put_Line("Start Bowling Game");

    X := Game.Dummy(2,2);
    Put_Line(Integer'Image(X));
    
end Main;