with Ada.Text_IO; use Ada.Text_IO;

package body Game is
    function New_Bowling(Frame : Vector) return Bowling is
    begin
        return (rolls => Frame);
    end New_Bowling;

    function Is_Next_Frame_In_Bound(Game : in Bowling; Frame : Positive) return Boolean is
    begin
        return Count_Type(Frame + 1) <= Game.rolls.Length;
    end Is_Next_Frame_In_Bound;

    function Is_Strike(Game : in Bowling; Frame : Positive) return Boolean is
    begin
        return Game.rolls(Frame) = 10;
    end Is_Strike;

    function Is_Spare(Game : in Bowling; Frame : Positive) return Boolean is
    begin
        return Game.rolls(Frame) + Game.rolls(Frame + 1) = 10;
    end Is_Spare;

    function BA(Bowling_Game : in Bowling) return Integer is
    Score : Integer := 0;
    Frame_Index : Positive := 1;

    begin
        while Count_Type(Frame_Index) <= Bowling_Game.rolls.Length loop
            if Is_Strike(Bowling_Game, Frame_Index) then
                Score := Score + 10;
                if Is_Next_Frame_In_Bound(Bowling_Game, Frame_Index) then
                    Score := Score + Bowling_Game.rolls(Frame_Index + 1);
                    if Is_Next_Frame_In_Bound(Bowling_Game, Frame_Index + 1) then
                        Score := Score + Bowling_Game.rolls(Frame_Index + 2);
                    end if;
                end if;
                Frame_Index := Frame_Index + 1;
            elsif Is_Next_Frame_In_Bound(Bowling_Game, Frame_Index) and then Is_Spare(Bowling_Game, Frame_Index) then
                Score := Score + 10;
                if Is_Next_Frame_In_Bound(Bowling_Game, Frame_Index + 1) then
                    Score := Score + Bowling_Game.rolls(Frame_Index + 2);
                end if;
                Frame_Index := Frame_Index + 2;
            else
                Score := Score + Bowling_Game.rolls(Frame_Index);
                if Is_Next_Frame_In_Bound(Bowling_Game, Frame_Index) then
                    Score := Score + Bowling_Game.rolls(Frame_Index + 1);
                end if;
                Frame_Index := Frame_Index + 2;
            end if;
        end loop;

        Put_Line(Integer'Image(Score));
        return Score;
    end BA;

end Game;