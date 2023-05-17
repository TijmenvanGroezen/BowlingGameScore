with Ada.Containers; use Ada.Containers;
with Ada.Text_IO; use Ada.Text_IO;

package body Game is
    function New_Bowling(Frame : Vector) return Bowling is
    begin
        return (rolls => Frame, score => 0);
    end New_Bowling;

    function Dummy(X, Y : Integer) return Integer is
    begin
        return X + Y;
    end Dummy;

    function BA(Bowling_Game : in Bowling) return Integer is
    B : Bowling := Bowling_Game;
    Frame_Index : Positive := 1;

    begin
        while Count_Type(Frame_Index) <= B.rolls.Length loop
            if B.rolls(Frame_Index) = 10 then
                B.score := B.score + 10;
                if Count_Type(Frame_Index + 1) <= B.rolls.Length then
                    B.score := B.score + B.rolls(Frame_Index + 1);
                end if;
                if Count_Type(Frame_Index + 2) <= B.rolls.Length then
                    B.score := B.score + B.rolls(Frame_Index + 2);
                end if;
                Frame_Index := Frame_Index + 1;
            else
                B.score := B.score + B.rolls(Frame_Index);
                if Count_Type(Frame_Index + 1) <= B.rolls.Length then
                    B.score := B.score + B.rolls(Frame_Index + 1);
                end if;
                Frame_Index := Frame_Index + 2;
            end if;
        end loop;

        Put_Line(Integer'Image(B.score));
        return B.score;
    end BA;

    procedure Roll(Bowling_Game : in out Bowling; Pins : Integer) is
    begin
        Bowling_Game.score := Bowling_Game.score + Pins;
    end Roll;

end Game;