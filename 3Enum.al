enum 50103 "Reservation Type"
{
    Extensible = true;

    value(0; None) { }
    value(1; Member) { 
         Caption = 'Member';
    }
    value(2; Comp) {
         Caption = 'Comp';
     }
    value(3; Public) {
         Caption = 'Public';
     }
}