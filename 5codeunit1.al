codeunit 50101 "Res. Jnl. Line – Check Line"
{

    trigger OnRun();
    begin
        ValidateDateField();
    end;

    var
        Valid: Boolean;

    procedure ValidateDateField()
    var
        CourseNumber: Integer;
        "Reservation Date": Date;
        MyTableRec: Record "Reservation Jnl. Line";
        Number: Integer;
    begin
        /*    MyTableRec.SETRANGE("Reservation Date", '>0D'); 
          ne prihvata datume
          */
        MyTableRec.SETRANGE("CourseNumber", 1, 3);

        Number := 0;
        REPEAT
            Number += 1;
            Valid := true;
            CourseNumber := MyTableRec."CourseNumber";
            if CourseNumber > 1 then begin

                MESSAGE('Valid ');
                Valid := true;

            end
        /*      else
                 if (CourseNumber < 1) then begin
                     MESSAGE('Invalid');
                     Valid := false;

                 end; */
        UNTIL MyTableRec.NEXT = 0;
    end;
}