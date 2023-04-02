page 50101 "Golf Courses"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Golf Course";
    layout
    {
        area(Content)
        {
            group(General)
            {
                field(ID; Rec."ID")
                {
                    ApplicationArea = All;

                }
                field(Name; Rec."Name")
                {
                    ApplicationArea = All;
                }
                field(Address; Rec."Address")
                {
                    ApplicationArea = All;


                }

                field(GreenFee; Rec."GreenFee")
                {
                    ApplicationArea = All;


                }
                field("Num. of reservations"; Rec."Num. of reservations")
                {
                    ApplicationArea = All;

                }
                field("Tot amount"; Rec."Tot amount")
                {
                    ApplicationArea = All;


                }
                field("First date"; Rec."First date")
                {
                    ApplicationArea = All;

                }

                field(CopyID; Rec."CopyID")
                {
                    ApplicationArea = All;

                }


            }
        }
    }

    actions
    {
        area(Navigation)
        {
            action(CallPageRLE)
            {

                ApplicationArea = All;
                trigger OnAction()
                var
                    Page: Page "Reservation Ledger Entries";

                begin
                    Page.Run();
                end;
            }
        }
    }
}