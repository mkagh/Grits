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
    }

    keys
    {
        key(PK; ID)
        {
            Clustered = true;
        }
    }



}