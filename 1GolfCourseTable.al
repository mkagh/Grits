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

        field(2; CopyID; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'CopyID';
        }
        field(3; Name; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Name';
        }
        field(4; Address; Text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'Address';
        }
        field(5; GreenFee; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Green Fee';
        }
        field(6; "No. of reservations"; Decimal)
        {
            Caption = 'nevazece';

        }
        field(7; "Total amount"; Decimal)
        {
            Caption = 'nevazece';

        }
        field(8; "Number of reservations"; Decimal)
        {
            Caption = 'nevazece';

        }
        field(9; "Num. of reservations"; Integer)
        {
            Caption = 'Num. of reservations';
            FieldClass = FlowField;
            CalcFormula = count("Reservation Ledger Entry"
               WHERE(CourseNumber = Field(CopyID),
               "Reservation Date" = Field("First date")
               //jedini nacin na koji sam uspeo da primenim filter,ali ne radi
               // isto vazi i za club member tabelu
               ))
            ;
        }
        field(10; "Tot amount"; Decimal)
        {
            Caption = 'Total amount';
            FieldClass = FlowField;
            CalcFormula = Sum("Reservation Ledger Entry"."Total Fees"
             WHERE(CourseNumber = Field(CopyID),
              "Reservation Date" = Field("First date")

             ));

        }
        field(11; "First date"; Date)
        {
            Caption = 'Filter date';
            FieldClass = FlowFilter;
        }

        field(12; "Second date"; Date)
        {
            FieldClass = FlowFilter;
        }

        field(13; "Currency Filter"; Code[10])
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

