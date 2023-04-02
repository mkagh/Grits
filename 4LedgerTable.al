table 50104 "Reservation Ledger Entry"
{
    DataClassification = ToBeClassified;
    fields
    {
        field(1; "ReservationNo"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Reservation No.';
        }
        field(2; "CoursePrice"; /* Code[20] */Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Course ';
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
        field(5; "Member No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Member No.';
        }
        field(6; "Member Number"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Member Number';
        }
        field(7; "Number of Players"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Number of Players';

        }
        field(8; "Tee Time"; Time)
        {
            DataClassification = CustomerContent;
            Caption = 'Tee Time';
        }
        field(9; "Total Fees"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Total Fees';
            Editable = false;
        }
        field(10; "Actual No. Players"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Actual Players';


        }
        field(11; "CourseNo"; Code[10]) //3.
        {
            DataClassification = CustomerContent;
            Caption = 'nevazece';
            Editable = false;
        }
        field(12; "CourseNumber"; Integer) //3.
        {
            DataClassification = CustomerContent;
            Caption = 'CourseNumber';
            Editable = false;

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