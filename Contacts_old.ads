with Ada.Strings.Unbounded;
  use Ada.Strings.Unbounded;
package Contacts is
   type Address_Type is
      record
         Street: Unbounded_String;
         City: Unbounded_String;
         State: Unbounded_String;
         Zip: Unbounded_String;
      end record;

   type Date_Type is
      record
         Day: Integer range 1..31;
         Month: Integer range 1..12;
         Year: Integer range 1900..9999;
      end record;

   type Contact_Type is
      record
         Name: Unbounded_String;
         Address: Address_Type;
         Birthdate: Date_Type;
      end record;

    type Contact_Book is array (1..100) of Contact_Type;

end Contacts;
