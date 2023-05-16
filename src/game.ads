with Ada.Containers.Vectors;

package Game is
    package Integer_Vectors is new
        Ada.Containers.Vectors
            (Index_Type => Natural, Element_Type => Integer);
    use Integer_Vectors;

    type Bowling is private;

    function New_Bowling(Frame : Vector) return Bowling;

    function Dummy(X, Y: Integer) return Integer;
    function BA(Bowling_Game : in Bowling) return Integer;

private
    type Bowling is record
        rolls : Vector;
        score : Integer := 0;
    end record;

    procedure Roll(Bowling_Game : in out Bowling; Pins : Integer);
end Game;