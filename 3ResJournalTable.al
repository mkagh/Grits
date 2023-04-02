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
        field(2; "CourseNumber"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'CourseNumber';
            Editable = false;
            trigger OnValidate()// pokusao sa get fj-om, ali vraca boolean,
            //pa sam uradio u hard coding maniru
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

        field(3; "CoursePrice"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Course Price';
            Editable = false;
        }

        field(4; "Reservation Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Reservation Date';
        }
        field(5; "Reservation Type"; Enum "Reservation Type")
        //U DOKUMENTACIJI NISAM PRONASAO NACIN DA URADIM TABLE RELATION,
        //IAKO SAM PRIMETIO DA SINTAKSA PODSECA NA FLOW FIELDS
        {
            DataClassification = CustomerContent;
            Caption = 'Reservation Type';


            trigger OnValidate()
            //zahtev: Remember that a  reservation type can be changed from one type to another. */
            begin

                if "Reservation Type" = "Reservation Type"::Public then
                    "Total Fees" := "Actual No. Players" * CoursePrice + ("Actual No. Players" * CoursePrice) * 0.1
                else
                    if "Reservation Type" = "Reservation Type"::Comp then
                        "Total Fees" := 0

            end;
        }
        field(6; "Member No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Nevazece';

        }
        field(7; "Number of Players"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Number of Players';
            trigger OnValidate()
            begin
                "Total Fees" := "Number of Players" * CoursePrice;
            end;
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
            trigger OnValidate()

            begin

                if "Reservation Type" = "Reservation Type"::Public then
                    "Total Fees" := "Actual No. Players" * CoursePrice + ("Actual No. Players" * CoursePrice) * 0.1
                else
                    if "Reservation Type" = "Reservation Type"::Comp then
                        "Total Fees" := 0

            end;


        }
        field(11; "CourseNo"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'nevazece';
            Editable = false;
        }
        field(12; "Green fee"; /* Code[20] */Integer)

        {
            DataClassification = CustomerContent;
            Caption = 'Nevazece';

        }
        field(13; "Member number"; /* Code[20] */Integer)

        {
            DataClassification = CustomerContent;
            Caption = 'Member number';

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