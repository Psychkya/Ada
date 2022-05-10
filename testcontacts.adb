with Contacts, Ada.Calendar, Ada.Integer_Text_IO;
use Contacts, Ada.Calendar, Ada.Integer_Text_IO;

procedure testcontacts is
   My_contact: Contact_Book;
   --Birth_Date: Time;
   An_Address: Address_Type;
   Contact: Contact_Type;

begin
   An_Address := Make_Address("123 One street",
                                "Scally Gag",
                                "Borderlands",
                                 "ZZZ-123");
   Contact  := Make_Contact("Gabalty Goop",
                            An_Address,
                            Time_Of(1999, 01, 01));
   Add_Contact(My_contact, Contact);
   An_Address := Make_Address("999 nine street",
                                "Heap of Scrap",
                                "Borderlands",
                                 "ZZZ-123");
   Contact  := Make_Contact("Booly Mong",
                            An_Address,
                            Time_Of(1950, 01, 01));
   Add_Contact(My_contact, Contact);

   Put(Get_Contact_Count(My_contact));
   for index in 1..Get_Contact_Count(My_contact)
   loop
      Put(Get_Contact(My_contact, index));
   end loop;

end testcontacts;
