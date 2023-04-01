table 50101 "Golf Course"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; ID; Code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'ID';
        }
        field(2; Name; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Name';
        }
        field(3; Address; Text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'Address';
        }
        field(4; GreenFee; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Green Fee';
        }
        field(5; "No. of reservations"; Decimal)
        {
            Caption = 'ne vazi';

        }
        field(6; "Total amount"; Decimal)
        {
            Caption = 'ne vazi';

        }
        field(7; "Number of reservations"; Decimal)
        {
            Caption = 'ne vazi';

        }
        field(8; "Num. of reservations"; Integer)
        {
            Caption = 'Num. of reservations';
            FieldClass = FlowField;
            CalcFormula = count("Reservation Ledger Entry"
               WHERE(CourseNo = Field(ID)));// ne moze da pretvori code[10] u integer
            ;
        }
        field(9; "Tot amount"; Decimal)
        {
            Caption = 'Total amount';
            FieldClass = FlowField;
            CalcFormula = Sum("Reservation Ledger Entry"."Total Fees"
             WHERE(CourseNo = Field(ID)
             /*  "Reservation Date" = Field("First date") */
             /*   "Initial Entry Global Dim. 2" = Field ("Second date"), */
             /*  "Currency Code" = Field ("Currency Filter") */
             ));

        }
        field(10; "First date"; Date)
        {
            FieldClass = FlowFilter;
        }

        field(11; "Second date"; Date)
        {
            FieldClass = FlowFilter;
        }

        field(12; "Currency Filter"; Code[10])
        {
            FieldClass = FlowFilter;
        }

    }
    keys
    {
        key(PK; ID)

        {
            Clustered = true;
        }
    }

}

