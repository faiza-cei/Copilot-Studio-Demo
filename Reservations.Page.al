page 50006 "Reservations"
{
    Caption = 'Reservations';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Reservations";
    Editable = true;
    InsertAllowed = true;
    ModifyAllowed = true;
    AccessByPermission = Tabledata 50005 = rmid;
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Room No."; rec."Room No.")
                {
                    Visible = True;
                    Editable = true;
                }
                field("Room Status"; rec."Room Status")
                {
                    Visible = True;
                    Editable = true;
                }
                field("Customer Name"; rec."Customer Name")
                {
                    Visible = True;
                    Editable = true;
                }
                field("No. of people"; rec."No. of people")
                {
                    Visible = True;
                    Editable = true;
                }
                field("Clean Status";rec."Clean status")
                {
                    Visible = true;
                    Editable = true;
                }
            }
        }
    }
    
    actions
    {
    }

       
}