with Ada.Containers; use Ada.Containers;
with Ada.Containers.Vectors;

package Game is
    package Integer_Vectors is new
        Ada.Containers.Vectors
            (Index_Type => Positive, Element_Type => Integer);
    use Integer_Vectors;

    type Bowling is private;

    function New_Bowling(Frame : Vector) return Bowling;
    function BA(Bowling_Game : in Bowling) return Integer;

private
    type Bowling is record
        rolls : Vector;
    end record;
end Game;