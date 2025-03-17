table 50005 "Reservations"
{
    Caption = 'Reservations';    
    DataClassification = ToBeClassified;
    LookupPageId = "Reservations";
    InherentPermissions = RIMDX;
    fields
    {
        field(1;"Room No."; Code[10])
        {
            Caption = 'Room No.';
            Editable = true;
        }
        field(2; "Room Status"; Option)
        {
            Caption = 'Room Status';
            OptionMembers = "Available","Pre-booked","Reserved";
            OptionCaption = 'Available,Pre-booked,Reserved';
            Editable = true;
        }
        field(3;"Customer Name";Text[30])
        {
            Caption = 'Customer Name';
            Editable = true;
        }
        field(4; "No. of people"; Integer)
        {
            Caption = 'No. of people';
            Editable = true;
        }
        field(5;"Clean status";Boolean){
            Caption = 'Clean status';
            Editable = true;
        }
    }
    
    keys
    {
        key(Key1; "Room No.")
        {
            Clustered = true;
        }
    }
    
    fieldgroups
    {
    }
    
    var
        myInt: Integer;
    
    trigger OnInsert()
    begin
        
    end;
    
    trigger OnModify()
    begin
        
    end;
    
    trigger OnDelete()
    begin
        
    end;
    
    trigger OnRename()
    begin
        
    end;
    
}