page 50104 "Reservation Ledger Entries"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Reservation Ledger Entry";

    layout
    {
        area(Content)
        {
            group(Informacije)
            {
                field(ReservationNo; Rec."ReservationNo")
                {
                    ApplicationArea = All;
                    Editable = true;

                }
             
                field("Reservation Date"; Rec."Reservation Date")
                {
                    ApplicationArea = All;
                    Editable = true;


                }
                field("Reservation Type"; Rec."Reservation Type")
                {
                    ApplicationArea = All;
                    Editable = true;


                }
               
                field("Number of Players"; Rec."Number of Players")
                {
                    ApplicationArea = All;
                    Editable = true;


                }
                field("Tee Time"; Rec."Tee Time")
                {
                    ApplicationArea = All;
                    Editable = true;


                }
                field("Total Fees"; Rec."Total Fees")
                {
                    ApplicationArea = All;
                    Editable = true;


                }
                field("Actual No. Players"; Rec."Actual No. Players")
                {
                    ApplicationArea = All;
                    Editable = true;


                }
                field("CourseNumber"; Rec."CourseNumber")
                {
                    ApplicationArea = All;
                    Editable = true;


                }
                field("Member Number"; Rec."Member Number")
                {
                    ApplicationArea = All;
                    Editable = true;


                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Message('data saved in the table');
                end;
            }
        }
    }

    var
        myInt: Integer;
}