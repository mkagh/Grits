table 50102 "Club Member"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; ID; Integer)
        {
            DataClassification = CustomerContent;

        }
        field(2; Name; Integer) //trebalo je text
        {
            DataClassification = CustomerContent;

        }
        field(3; Address; Integer)//trebalo je text
        {
            DataClassification = CustomerContent;

        }

        field(4; MemberType; Enum "Club Member Type")
        {
            DataClassification = CustomerContent;
        }

        field(5; Status; Enum "Member Status")
        {
            DataClassification = CustomerContent;

        }
        field(8; "Num. of reservations"; Integer)
        {
            Caption = 'Num. of reservations';
            FieldClass = FlowField;
            CalcFormula = count("Reservation Ledger Entry"
               WHERE("Member Number" = Field(ID)
               ))
            ;
        }
        field(9; "Tot amount"; Decimal)
        {
            Caption = 'Total amount';
            FieldClass = FlowField;
            CalcFormula = Sum("Reservation Ledger Entry"."Total Fees"
             WHERE("Member Number" = Field(ID)

             ));

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