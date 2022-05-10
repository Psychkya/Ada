package body Contacts is

   function Make_Address (Street: in String;
                          City: in String;
                          State: in String;
                          Zip: in String) return Address_Type is
      addr : Address_Type;
   begin
      addr.Street := To_Unbounded_String(Street);
      addr.City := To_Unbounded_String(City);
      addr.State := To_Unbounded_String(State);
      addr.Zip := To_Unbounded_String(Zip);
      return addr;
   end Make_Address;

   procedure Put (Address: in Address_Type) is
   begin
      Put_Line(To_String(Address.Street));
      Put_Line(To_String(Address.City));
      Put_Line(To_String(Address.State));
      Put_Line(To_String(Address.Zip));
   end Put;

   function Make_Contact (Name: String;
                          Address: Address_Type;
                          Birthdate: Time) return Contact_Type is
      ct : Contact_Type;
   begin
      ct.Name := To_Unbounded_String(Name);
      ct.Address := Address;
      ct.Birthdate := Birthdate;
      return ct;
   end Make_Contact;

   procedure Put (Contact: in Contact_Type) is
   begin
      Put_Line(To_String(Contact.Name));
      Put(Contact.Address);
      Put_Line("Yet to put birthdate");
   end Put;

   function Get_Contact_Count (Contacts: in Contact_Book)
                               return Integer is
   begin
      return Contacts.Num_Contacts;
   end Get_Contact_Count;

   procedure  Add_Contact(Contacts: in out Contact_Book;
                         Contact: in Contact_Type) is
   begin
      Contacts.Num_Contacts := Contacts.Num_Contacts + 1;
      Contacts.Contact_Record(Contacts.Num_Contacts) := Contact;

   end Add_Contact;

   function Get_Contact (Contacts: in Contact_Book;
                         num: in Integer) return Contact_Type is
   begin
      return Contacts.Contact_Record(num);
   end Get_Contact;


end Contacts;
