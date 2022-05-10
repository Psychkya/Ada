With Ada.Text_IO;
With Ada.Integer_Text_IO;

procedure DigitCount is
   Val, Result: Integer;
   function CountDigits (X: in Integer) return Integer is
      returnVal, temp: Integer := 0;
   begin
      if X >= 0 then
         returnVal := 1;
         temp := X;
         while temp > 9 loop
            temp := temp / 10;
            returnVal := returnVal + 1;
         end loop;
      end if;
      return returnVal;
   end CountDigits;

begin
   Ada.Text_IO.Put_Line("Enter a value");
   Ada.Integer_Text_IO.Get(Val);
   Result := CountDigits(Val);
   if Result = 0 then
      Ada.Text_IO.Put_Line("Negative number is invalid");
   else
      Ada.Text_IO.Put_Line("The number of digits are:");
      Ada.Integer_Text_IO.Put(Result);
      Ada.Text_IO.New_Line;
   end if;
end ;
