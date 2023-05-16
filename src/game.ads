with Ada.Containers.Vectors;

package Game is
    package Integer_Vectors is new
        Ada.Containers.Vectors
            (Index_Type => Natural, Element_Type => Integer);
    use Integer_Vectors;

    type Bowling is private;

    function New_Bowling(Frame : Vector) return Bowling;

    function Dummy(X, Y: Integer) return Integer;
    function BA(Frame : in Vector) return Integer;

private
    type Bowling is record
        rolls : Vector;
    end record;
end Game;