page 50103 "Reservation Journal"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Reservation Jnl. Line";


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
                field(CourseNumber; Rec."CourseNumber")
                {
                    ApplicationArea = All;
                    Editable = true;

                }
                /*  field("CoursePrice"; Rec."CoursePrice")
                 {
                     ApplicationArea = All;
                     Editable = true;

                 } */
                field(ReservationDate; Rec."Reservation Date")
                {
                    ApplicationArea = All;
                    Editable = true;


                }
                field(ReservationType; Rec."Reservation Type")
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
                field("Actual No. Players"; Rec."Actual No. Players")
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
        area(Navigation)
        {
            action(codeunit1)
            {
                Caption = 'Res. Jnl. Line – Check Line';

                ApplicationArea = All;
                trigger OnAction()
                var
                    Codeunit: Codeunit "Res. Jnl. Line – Check Line";

                begin
                    Codeunit.Run();
                end;
            }
            action(codeunit2)
            {
                Caption = 'Res. Jnl. Line – Check Post';
                ApplicationArea = All;
                trigger OnAction()
                var
                    Codeunit: Codeunit "Res. Jnl. Line – Post Line";

                begin
                    Codeunit.Run();
                end;
            }
            action(codeunit3)
            {
                Caption = 'Res. Jnl. Line – Check BAtch';
                ApplicationArea = All;
                trigger OnAction()
                var
                    Codeunit: Codeunit "Res. Jnl. Line – Post Batch";

                begin
                    Codeunit.Run();
                end;
            }
        }
    }
    var
        myInt: Integer;
}