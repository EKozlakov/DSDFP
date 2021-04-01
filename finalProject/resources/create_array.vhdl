-- Creates a 3D array
type t_Row_Col is array (0 to 100, 0 to 2) of integer range 0 to 255;
signal r_Number : t_Row_Col;
 
-- Accessing The Array:
r_Choice <= r_Number(0, 1);
 
r_Number(100, 2) <= 9;