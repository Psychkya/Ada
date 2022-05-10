With Ada.Text_IO;

procedure PlayWithReals is
   type MyReal is delta 0.1 digits 10;
   ANum : MyReal := 0.100;
      package Money is new Ada.Text_IO.Decimal_IO(MyReal);
begin
   Money.Put(ANum);

end PlayWithReals;
