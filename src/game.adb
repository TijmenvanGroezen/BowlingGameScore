package body Game is
    function New_Bowling(Frame : Vector) return Bowling is
    begin
        return (rolls => Frame);
    end New_Bowling;

    function Dummy(X, Y : Integer) return Integer is
    begin
        return X + Y;
    end Dummy;

    function BA(Frame : in Vector) return Integer is
    pragma Unreferenced(Frame);
    begin
        return 0;
    end BA;
 

end Game;