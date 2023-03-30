codeunit 50102 "Res. Jnl. Line – Post Line"
{
    trigger OnRun();
    begin
        Transfer();
    end;

    procedure Transfer()
    var
        MyTable1Rec: Record "Reservation Jnl. Line";
        MyTable2Rec: Record "Reservation Ledger Entry";
    begin


        MyTable2Rec.INIT;

        IF MyTable1Rec.FINDSET THEN BEGIN
            REPEAT
                MyTable2Rec.INIT;
                MyTable2Rec."ReservationNo" := MyTable1Rec."ReservationNo";
                MyTable2Rec."CoursePrice" := MyTable1Rec."Actual No. Players";
                MyTable2Rec."Reservation Date" := MyTable1Rec."Reservation Date";
                MyTable2Rec."Reservation Type" := MyTable1Rec."Reservation Type";
                MyTable2Rec."Number of Players" := MyTable1Rec."Number of Players";
                MyTable2Rec."Actual No. Players" := MyTable1Rec."Actual No. Players";
                MyTable2Rec."Tee Time" := MyTable1Rec."Tee Time";
                MyTable2Rec."Total Fees" := MyTable1Rec."Total Fees";

                MyTable2Rec.INSERT;
            UNTIL MyTable1Rec.NEXT = 0;
        END;
    end;
}