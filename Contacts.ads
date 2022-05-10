with Ada.Strings.Unbounded, Ada.Calendar, Ada.Text_IO;
  use Ada.Strings.Unbounded, Ada.Calendar, Ada.Text_IO;
package Contacts is
   type Address_Type is private;
   function  Make_Address(Street: in String;
                          City: in String;
                          State: in String;
                           Zip: in String) return Address_Type;
   procedure Put (Address: in Address_Type);

   type Contact_Type is private;
   function Make_Contact (Name: String;
                          Address: Address_Type;
                          Birthdate: Time) return Contact_Type;
   procedure Put (Contact: in Contact_Type);

   type Contact_Book is private;
   function Get_Contact_Count ( Contacts: in Contact_Book) return Integer;
   procedure Add_Contact(Contacts: in out Contact_Book;
                         Contact: in Contact_Type);
   function Get_Contact (Contacts: in Contact_Book;
                         num: in Integer) return Contact_Type;
private
   type Address_Type is
      record
         Street: Unbounded_String;
         City: Unbounded_String;
         State: Unbounded_String;
         Zip: Unbounded_String;
      end record;

   type Contact_Type is
      record
         Name: Unbounded_String;
         Address: Address_Type;
         Birthdate: Time;
      end record;

   type Contact_List is array (1..100) of Contact_Type;

   type Contact_Book is
      record
         Contact_Record: Contact_List;
         Num_Contacts: Integer range 0..100 := 0;
      end record;


end Contacts;
