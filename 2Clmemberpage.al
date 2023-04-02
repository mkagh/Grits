page 50102 "Club Members"
{
    SourceTable = "Club Member";
    PageType = List;

    layout
    {
        area(Content)
        {
            group(Information)
            {
                field(ID; Rec."ID")
                {
                    ApplicationArea = All;
                    Caption = 'Member ID';
                }

                field(Name; Rec."Name")
                {
                    ApplicationArea = All;
                    Caption = 'Member Name';
                }

                field(Address; Rec."Address")
                {
                    ApplicationArea = All;
                    Caption = 'Member Address';
                }

                field(MemberType; Rec."MemberType")
                {
                    ApplicationArea = All;
                    Caption = 'Member Type';
                }

                field(Status; Rec."Status")
                {
                    ApplicationArea = All;
                    Caption = 'Status';
                }
                field("Num. of reservations"; Rec."Num. of reservations")
                {
                    ApplicationArea = All;
                    Caption = 'Num. of reservations';
                }
                field("Tot amount"; Rec."Tot amount")
                {
                    ApplicationArea = All;
                    Caption = 'Tot amount';
                }
            }
        }
    }
}