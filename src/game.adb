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
    begin
        for Pin of B.rolls loop
            Roll(B, Pin);
        end loop;
        return B.score;
    end BA;

    procedure Roll(Bowling_Game : in out Bowling; Pins : Integer) is
    begin
        Bowling_Game.score := Bowling_Game.score + Pins;
    end Roll;

end Game;