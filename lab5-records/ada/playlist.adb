with Ada.Integer_Text_IO;   use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;     use Ada.Float_Text_IO;
with Ada.Text_IO;           use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

procedure PlayList is

--this defines a record type Person with one field name
    type Person is record
        name : Unbounded_String;
    end record;
--this takes a person record as an argument and prints their name
    procedure Put_Person (p : Person) is
    begin
        Put (To_String (p.name));
    end Put_Person;
--this defines a record type Item with 3 fields
--enumerated type
    type ItemVarient is (Piece_Kind, Pause_kind);
    --this is the discriminant name and type
   
    type Item(Variant: ItemVarient) is record
         case variant is
            when Piece_Kind => --variant one
               name        : Unbounded_String;
               performer   : Person;
               length_secs : Float;
            when Pause_Kind => --variant two
               item_variant => PAUSE;
               length_secs => 5.0;
         end case;
    end record;
--this takes an item as an argument and prints the item's details
    procedure Put_Item (i : Item) is
    begin
      --this code has been changed so that the put item function
      --can handle the two variants of item
      case i.Variant is
         when Piece_Kind =>
            Put (To_String (i.name));
            Put (" by ");
            Put_Person (i.performer);
            Put (" (");
            Put (i.length_secs, aft => 1, exp => 0);
            Put ("s)");
         when Pause_Kind =>
            Put (i.length_secs);
         end case;
    end Put_Item;

--this defines an item instance called piece1
--colon and equal sign used to declare and initialise a variable
    piece1 : Item :=
       (name => To_Unbounded_String ("Moonlight Sonata"),
        performer => (name => To_Unbounded_String ("Claudio Arrau")),
        length_secs => 17.0*60.0+26.0
       );

     pause1 : Item :=
        (
         item_variant => PAUSE,
         length_secs => 5.0
        );
-- the keyword begin signifies the main executable part of code
begin
    Put_Item (piece1);
    Put_Line ("");
    Put_Item(pause1);
    Put_Line ("");
end PlayList;
