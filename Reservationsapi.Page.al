
page 50007 "Reservations API"
{
    PageType = API;

    APIVersion = 'v1.0';
    APIPublisher = 'copilot';
    APIGroup = 'demo';

    EntityCaption = 'Reservation';
    EntitySetCaption = 'Reservation';
    EntityName = 'reservation';
    EntitySetName = 'reservation';

    ODataKeyFields = "Room No.";    
    SourceTable = "Reservations";

    DelayedInsert = true;
    InsertAllowed = true;
    ModifyAllowed = true;
    DeleteAllowed = true;
    Editable=true;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Id";rec.SystemId){
                    Caption = 'Id';
                    Editable=false;
                }
                  field("RoomNo"; rec."Room No.")
                {
                    Visible = True;
                    // Editable = true;
                }
                field("RoomStatus"; rec."Room Status")
                {
                    Visible = True;
                    Editable = true;
                }
                field("CustomerName"; rec."Customer Name")
                {
                    Visible = True;
                    Editable = true;
                }
                field("Noofpeople"; rec."No. of people")
                {
                    Visible = True;
                    Editable = true;
                }
                field("CleanStatus";Rec."Clean status")
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

    [ServiceEnabled]
    [Scope('Cloud')]
    procedure UpdateCleanStatus(roomno: Code[10])
    var 
        res : Record Reservations;
    begin
        if res.Get(roomno) then begin
            res."Clean status" := true;
            res.Modify();
        end
        else
            Error('Room %1 not found',roomno);
    end;

    [ServiceEnabled]
    [Scope('Cloud')]
    procedure UpdateRoomReservation(Custname : Text[30]; Noppl : Integer)  roomno: Code[10]
    var 
        res : Record Reservations;
    begin
       if(Custname <> '') and (noppl>0 ) then
           res.SetRange("Room Status", res."Room Status"::Available);
           res.SetCurrentKey("Room No.");
           if(res.FindFirst()) then begin
                res."Customer Name" := Custname;
                res."No. of people" := Noppl;
                res."Room Status" := res."Room Status"::"Pre-booked";
                roomno := res."Room No.";
                res.Modify();
                exit(roomno);
            end;
    end;
}

