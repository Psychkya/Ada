With Ada.Text_IO;

procedure Enums is
   string_entered: String(1..10);
   last: Natural;
   type season_types is (Spring, Summer, Fall, Winter);
   function Next_Season (season_entered: in String) return season_types is
   begin
      return season_types'Succ(season_types'Value(season_entered));
   end ;
   function Last_Season (season_entered: in String) return season_types is
      entered_season: season_types;
      begin
         entered_season := season_types'Value(season_entered);
         if entered_season = season_types'First then
             return season_types'Last;
         else
             return season_types'Pred(entered_season);
         end if;

      end ;
begin
   Ada.Text_IO.Put_Line("Enter a season");
   Ada.Text_IO.Get_Line(string_entered, last);
   Ada.Text_IO.Put_Line("Next season is " &
                          season_types'Image(Next_Season(string_entered(1..last))));
   Ada.Text_IO.Put_Line("Last season was " &
                          season_types'Image(Last_Season(string_entered(1..last))));


end Enums;
