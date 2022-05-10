with Ada.Text_IO;
with Ada.Integer_Text_IO;

procedure  Sum is
   X: Integer;
   Y: Integer;
   Total: Integer;
   procedure  SumValues(A,B: in Integer; T: out Integer) is
   begin
      T := X+Y;
   end SumValues;
   function  Sum_Vals(A,B: in Integer) return Integer is
   begin
      return A + B;
   end Sum_Vals;
   begin
   Ada.Text_IO.Put_Line("Enter the first number:");
   Ada.Integer_Text_IO.Get(X);
   Ada.Text_IO.Put_Line("Enter the second number:");
   Ada.Integer_Text_IO.Get(Y);
   SumValues(X, Y, Total);
   Ada.Text_IO.Put_Line("Sum from procedure is: ");
   Ada.Integer_Text_IO.Put(Total);
   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line("Sum from function is: ");
   Ada.Integer_Text_IO.Put(Sum_Vals(X,Y));

end Sum;
