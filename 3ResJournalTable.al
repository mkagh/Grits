table 50103 "Reservation Jnl. Line"
{
    DataClassification = ToBeClassified;
    fields
    {
        field(1; "ReservationNo"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Reservation No.';
        }
        field(11; "CourseNumber"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Course Number';
            Editable = false;
            trigger OnValidate()
            var
                GolfCourse: Record "Golf course";
            begin
                if "CourseNumber" = 1 then
                    "CoursePrice" := 1000
                else
                    if "CourseNumber" = 2 then
                        "CoursePrice" := 2000

            end;
        }
        field(2; "CoursePrice"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Course Price';
            Editable = false;
        }

        field(3; "Reservation Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Reservation Date';
        }
        field(4; "Reservation Type"; Enum "Reservation Type")
        {
            DataClassification = CustomerContent;
            Caption = 'Reservation Type';
        }
        field(5; "Member No."; Code[20])//1. zahtev
        {
            DataClassification = CustomerContent;
            Caption = 'Member No.';
            TableRelation =
        if ("Reservation Type" = const(Member)) "Club Member";
        }
        field(6; "Number of Players"; Integer)//2.zahtev(user da unese broj igraca)
        {
            DataClassification = CustomerContent;
            Caption = 'Number of Players';
            trigger OnValidate()
            begin
                "Total Fees" := "Number of Players" * CoursePrice;
            end;
        }
        field(7; "Tee Time"; Time) //4.
        {
            DataClassification = CustomerContent;
            Caption = 'Tee Time';
        }
        field(8; "Total Fees"; Decimal) //3.
        {
            DataClassification = CustomerContent;
            Caption = 'Total Fees';
            Editable = false;
        }
        field(9; "Actual No. Players"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Actual Players';
            trigger OnValidate()
            var
                Member: Boolean;
            begin

                if "Reservation Type" = "Reservation Type"::Public then
                    "Total Fees" := "Actual No. Players" * CoursePrice + ("Actual No. Players" * CoursePrice) * 0.1
                else
                    if "Reservation Type" = "Reservation Type"::Comp then
                        "Total Fees" := 0

            end;


        }
        field(10; "CourseNo"; Decimal) //3.
        {
            DataClassification = CustomerContent;
            Caption = 'Nevazece';
            Editable = false;
        }
        field(12; "Green fee"; /* Code[20] */Integer)

        {
            DataClassification = CustomerContent;
            Caption = 'Nevazece';

        }

    }
    keys
    {
        key(PK; ReservationNo)

        {
            Clustered = true;
        }
    }
}