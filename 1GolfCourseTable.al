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
 
        field(5; "Num. of reservations"; Integer)
        {
            Caption = 'Num. of reservations';
            FieldClass = FlowField;
            CalcFormula = count("Reservation Ledger Entry"
               WHERE(CourseNumber = Field(CopyID),
               "Reservation Date" = Field("First date")
               
               ))
            ;
        }
        field(6; "Tot amount"; Decimal)
        {
            Caption = 'Total amount';
            FieldClass = FlowField;
            CalcFormula = Sum("Reservation Ledger Entry"."Total Fees"
             WHERE(CourseNumber = Field(CopyID),
              "Reservation Date" = Field("First date")

             ));

        }
        field(7; "First date"; Date)
        {
            Caption = 'Filter date';
            FieldClass = FlowFilter;
        }

        field(8; "Second date"; Date)
        {
            FieldClass = FlowFilter;
        }

        field(9; "Currency Filter"; Code[10])
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

