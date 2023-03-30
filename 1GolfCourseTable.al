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
        /*     field(6; "Total Amount"; Decimal)
            {
                FieldClass = FlowField;
                CalcFormula = Sum("Reservation Ledger Entry"."Total Fees"
                WHERE ("Customer No."=Field("No."),
                "Initial Entry Global Dim. 1"=Field("Global Dimension 1 Filter"),
                "Initial Entry Global Dim. 2"=Field("Global Dimension 2 Filter"),
                "Currency Code"=Field("Currency Filter")
                ) );
            } */

    }
    keys
    {
        key(PK; ID)

        {
            Clustered = true;
        }
    }

}

