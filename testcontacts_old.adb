with Contacts, Ada.Strings.Unbounded, Ada.Text_IO, Ada.Integer_Text_IO;
use Contacts, Ada.Strings.Unbounded, Ada.Text_IO, Ada.Integer_Text_IO;

procedure testcontacts is
   sample_contact: Contact_Book;
   procedure print_Contact_Tyoe (ct: in Contact_Type) is
   begin
      Put_Line("Name is " & To_String(ct.Name));
      Put_Line("Address is: ");
      Put_Line(To_String(ct.Address.Street));
      Put_Line(To_String(ct.Address.City));
      Put_Line(To_String(ct.Address.State));
      Put_Line(To_String(ct.Address.Zip));
      Put("Birthdate is ");
      Put(ct.Birthdate.Month);
      Put("/");
      Put(ct.Birthdate.Day);
      Put("/");
      Put(ct.Birthdate.Month);
      New_Line;

   end ;
begin
   sample_contact(1).Name := To_Unbounded_String("Nayan");
   sample_contact(1).Address.Street := To_Unbounded_String("123 Ada Ave");
   sample_contact(1).Address.City := To_Unbounded_String("Lovelace");
   sample_contact(1).Address.State := To_Unbounded_String("Tron");
   sample_contact(1).Address.Zip := To_Unbounded_String("95000");
   sample_contact(1).Birthdate.Day := 29;
   sample_contact(1).Birthdate.Month := 2;
   sample_contact(1).Birthdate.Year := 1995;

   sample_contact(2) := (Name => To_Unbounded_String("Marsha"),
                         Address => (Street => To_Unbounded_String("456 Ada Ave"),
                                     City => To_Unbounded_String("Babage"),
                                     State => To_Unbounded_String("Tron"),
                                     Zip => To_Unbounded_String("010110")),
         Birthdate => (Day => 28, Month => 2, Year => 1994)
                        );
   for index in 1..2
   loop
      print_Contact_Tyoe(sample_contact(index));
   end loop;
end testcontacts;
